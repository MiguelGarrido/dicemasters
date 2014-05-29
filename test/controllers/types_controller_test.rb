require 'test_helper'

class TypesControllerTest < ActionController::TestCase
  setup :initialize_type

  def teardown
    @type = nil
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @type.id
    assert_response :success
  end

  test "should get create" do
    post :create, type: @type.attributes
    assert_redirected_to type_path(assigns(:type))
  end

  test "should get update" do
    put :update, id: @type.id, type: @type.attributes
    assert_redirected_to type_path(assigns(:type))    
  end

  test "should get destroy" do
    get :destroy, id: @type.id
    assert_redirected_to action: "index"
  end

  private
  def initialize_type
    @type = types(:one)    
  end
end
