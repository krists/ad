# frozen_string_literal: true

require "test_helper"

class AD::ConnectionFactoryTest < Minitest::Test
  def setup
    setup_ad_for_built_in_server
  end

  def test_service_user_connection_with_valid_service_user
    AD::ConnectionFactory.service_user_connection
  end

  def test_service_user_connection_with_invalid_service_user
    AD.service_user_password = "invalid-password"
    assert_raises AD::ConnectionFactory::ServiceUserBindError do
      AD::ConnectionFactory.service_user_connection
    end
  end
end
