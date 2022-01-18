require "test_helper"

class ParticipatesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get participates_create_url
    assert_response :success
  end
end
