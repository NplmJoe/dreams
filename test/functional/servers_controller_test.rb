require 'test_helper'

class ServersControllerTest < ActionController::TestCase
  setup do
    @server = servers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create server" do
    assert_difference('Server.count') do
      post :create, server: { app_id: @server.app_id, app_last_updated: @server.app_last_updated, app_version: @server.app_version, environment_id: @server.environment_id, name: @server.name, os: @server.os, os_last_updated: @server.os_last_updated, os_version: @server.os_version }
    end

    assert_redirected_to server_path(assigns(:server))
  end

  test "should show server" do
    get :show, id: @server
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @server
    assert_response :success
  end

  test "should update server" do
    put :update, id: @server, server: { app_id: @server.app_id, app_last_updated: @server.app_last_updated, app_version: @server.app_version, environment_id: @server.environment_id, name: @server.name, os: @server.os, os_last_updated: @server.os_last_updated, os_version: @server.os_version }
    assert_redirected_to server_path(assigns(:server))
  end

  test "should destroy server" do
    assert_difference('Server.count', -1) do
      delete :destroy, id: @server
    end

    assert_redirected_to servers_path
  end
end
