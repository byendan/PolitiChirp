require 'test_helper'

class PolititiansControllerTest < ActionController::TestCase
  setup do
    @polititian = polititians(:one)
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
      post :create, polititian: {  }
    end

    assert_redirected_to polititian_path(assigns(:polititian))
  end

  test "should show polititian" do
    get :show, id: @polititian
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @polititian
    assert_response :success
  end

  test "should update polititian" do
    patch :update, id: @polititian, polititian: {  }
    assert_redirected_to polititian_path(assigns(:polititian))
  end

  test "should destroy polititian" do
    assert_difference('Polititian.count', -1) do
      delete :destroy, id: @polititian
    end

    assert_redirected_to polititians_path
  end
end
