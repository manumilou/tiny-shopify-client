require 'test_helper'

class AbandonedCheckoutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get abandoned_checkout_index_url
    assert_response :success
  end

end
