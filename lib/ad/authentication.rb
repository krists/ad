# frozen_string_literal: true

module AD
  class Authentication
    def initialize(connection = AD::ConnectionFactory.service_user_connection)
      @connection = connection
    end

    attr_reader :connection, :bind_user

    def authenticate(username, password)
      @bind_user = nil
      return false if username.blank? || password.blank?
      result = @connection.bind_as(
        base: AD.base_dn,
        filter: Net::LDAP::DN.new(AD.unique_id_attr, username.strip).to_s,
        password: password.to_s
      )
      @bind_user = result[0] if result
      @bind_user ? true : false
    end
  end
end
