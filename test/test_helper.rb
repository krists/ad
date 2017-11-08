# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "pry"
require "ad"
require "minitest/autorun"

module ConfigurationSetter
  def setup_ad_for_built_in_server
    AD.configure do |c|
      c.reset!
      c.host = "ldap"
      c.port = 3897
      c.unique_id_attr = "uid"
      c.base_dn = "dc=example,dc=org"
      c.service_user_dn = "uid=aa729,ou=people,dc=example,dc=org"
      c.service_user_password = "smada"
    end
  end
end

class Minitest::Test
  include ConfigurationSetter
end
