require 'test_helper'

class ScourerControllerTest < ActionController::TestCase
  
  test "xml scrape" do
    get :skiklubben, :format => 'xml'
    assert_response :success, @response.body
  end
  
  
end
