# frozen_string_literal: true

module AD
  class RecordFinder
    def initialize(connection = AD::ConnectionFactory.service_user_connection)
      @connection = connection
    end

    attr_reader :connection, :result

    def find_by_id(query, attributes: [])
      @result = @connection.search(
        base: AD.base_dn,
        filter: Net::LDAP::Filter.eq(AD.unique_id_attr, query.to_s),
        attributes: attributes
      )
    end
  end
end
