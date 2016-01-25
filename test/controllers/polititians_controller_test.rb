require 'test_helper'
require 'controller_helper'
class PolititiansControllerTest < ActionController::TestCase
  setup do
    @pundit = polititians(:valid_pundit)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:polititians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create polititian" do
    assert_difference('Polititian.count') do
      post :create, polititian: {name: @pundit.name, avatar: @pundit.avatar,
         feature_image: @pundit.feature_image, twitter_handle: @pundit.twitter_handle, 
         link: @pundit.link }
    end

    assert_redirected_to admin_panel_path
  end

  test "should show polititian" do
    get :show, id: @pundit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pundit
    assert_response :success
  end

  test "should update polititian" do
    patch :update, id: @pundit, polititian: {name: "newNameYeah!"  }
    assert_redirected_to admin_panel_path
  end

  test "should destroy polititian" do
    assert_difference('Polititian.count', -1) do
      delete :destroy, id: @pundit
    end

    assert_redirected_to admin_panel_path
  end
end
