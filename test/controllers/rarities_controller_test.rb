require 'test_helper'

class RaritiesControllerTest < ActionController::TestCase
   setup :initialize_rarity

  def teardown
    @rarity = nil
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @rarity.id
    assert_response :success
  end

  test "should get create" do
    post :create, rarity: @rarity.attributes
    assert_redirected_to rarity_path(assigns(:rarity))
  end

  test "should get update" do
    put :update, id: @rarity.id, rarity: @rarity.attributes
    assert_redirected_to rarity_path(assigns(:rarity))    
  end

  test "should get destroy" do
    get :destroy, id: @rarity.id
    assert_redirected_to action: "index"
  end

  private
  def initialize_rarity
    @rarity = rarities(:one)    
  end
end
