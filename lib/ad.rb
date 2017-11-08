# frozen_string_literal: true

require "net/ldap"
require "net/ldap/dn"

require "active_support"
require "active_support/core_ext/object/blank"
require "active_support/core_ext/string/strip"

require "ad/version"
require "ad/connection_factory"
require "ad/authentication"
require "ad/record_finder"

module AD
  CONFIG_ATTRS = [:host, :port, :service_user_dn, :service_user_password, :base_dn, :unique_id_attr, :instrumentation_service].freeze
  DEFAULT_UNIQUE_ID_ATTR = "samaccountname"
  DEFAULT_HOST = "127.0.0.1"
  DEFAULT_PORT = 389
  class << self
    attr_accessor(*CONFIG_ATTRS)

    def configure
      yield self
    end

    def reset!
      CONFIG_ATTRS.each do |attr|
        send("#{attr}=", nil)
      end
      self.host = DEFAULT_HOST
      self.port = DEFAULT_PORT
      self.unique_id_attr = DEFAULT_UNIQUE_ID_ATTR
      true
    end
  end
  reset!
end
