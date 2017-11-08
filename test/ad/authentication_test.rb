# frozen_string_literal: true

require "test_helper"

class AD::AuthenticationTest < Minitest::Test
  def setup
    setup_ad_for_built_in_server
  end

  def test_authenticate_with_valid_service_user
    assert_equal false, AD::Authentication.new.authenticate("non-existing-user", "secret")
    assert_equal true, AD::Authentication.new.authenticate("gg855", "selaznog")
  end

  def test_bind_user_after_successful_authentication
    auth = AD::Authentication.new
    assert_nil auth.bind_user
    assert_equal true, auth.authenticate("gg855", "selaznog")
    assert auth.bind_user
    assert_equal ["Grace Gonzales"], auth.bind_user["cn"]
  end
end
