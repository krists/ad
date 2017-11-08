# frozen_string_literal: true

require "test_helper"

class AdTest < Minitest::Test
  def setup
    AD.reset!
  end

  def test_that_it_has_a_version_number
    refute_nil ::AD::VERSION
  end

  def test_default_values
    assert AD.host
    assert AD.port
    assert AD.unique_id_attr
  end

  def test_reset_to_default_values
    assert_equal "127.0.0.1", AD.host
    AD.host = "example.com"
    assert_equal "example.com", AD.host
    AD.reset!
    assert_equal "127.0.0.1", AD.host
  end

  def test_configuration
    AD.configure do |c|
      c.host = "foo"
      c.service_user_dn = "uid=ll819,ou=people,dc=example,dc=org"
    end
    assert_equal "foo", AD.host
    assert_equal "uid=ll819,ou=people,dc=example,dc=org", AD.service_user_dn
  end
end
