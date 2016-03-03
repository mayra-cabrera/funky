require 'test_helper'

class StarwarsControllerTest < ActionController::TestCase
  setup do
    @starwar = starwars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:starwars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create starwar" do
    assert_difference('Starwar.count') do
      post :create, starwar: {  }
    end

    assert_redirected_to starwar_path(assigns(:starwar))
  end

  test "should show starwar" do
    get :show, id: @starwar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @starwar
    assert_response :success
  end

  test "should update starwar" do
    patch :update, id: @starwar, starwar: {  }
    assert_redirected_to starwar_path(assigns(:starwar))
  end

  test "should destroy starwar" do
    assert_difference('Starwar.count', -1) do
      delete :destroy, id: @starwar
    end

    assert_redirected_to starwars_path
  end
end
