# frozen_string_literal: true

module AD
  module ConnectionFactory
    ServiceUserBindError = Class.new(StandardError)

    def unauthenticated_connection
      Net::LDAP.new(
        host: AD.host,
        port: AD.port,
        instrumentation_service: AD.instrumentation_service
      )
    end

    def service_user_connection
      connection = unauthenticated_connection
      connection.auth(
        Net::LDAP::DN.new(AD.service_user_dn).to_s,
          AD.service_user_password
      )
      unless connection.bind
        raise ServiceUserBindError, connection.get_operation_result
      end
      connection
    end

    module_function :unauthenticated_connection
    module_function :service_user_connection
  end
end
