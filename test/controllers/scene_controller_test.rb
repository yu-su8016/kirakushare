require 'test_helper'

class SceneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scene_index_url
    assert_response :success
  end

end
