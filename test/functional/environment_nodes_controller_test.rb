require 'test_helper'

class EnvironmentNodesControllerTest < ActionController::TestCase
  setup do
    @environment_node = environment_nodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:environment_nodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create environment_node" do
    assert_difference('EnvironmentNode.count') do
      post :create, :environment_node => { :quantity => @environment_node.quantity }
    end

    assert_redirected_to environment_node_path(assigns(:environment_node))
  end

  test "should show environment_node" do
    get :show, :id => @environment_node
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @environment_node
    assert_response :success
  end

  test "should update environment_node" do
    put :update, :id => @environment_node, :environment_node => { :quantity => @environment_node.quantity }
    assert_redirected_to environment_node_path(assigns(:environment_node))
  end

  test "should destroy environment_node" do
    assert_difference('EnvironmentNode.count', -1) do
      delete :destroy, :id => @environment_node
    end

    assert_redirected_to environment_nodes_path
  end
end
