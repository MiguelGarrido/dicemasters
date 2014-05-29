require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  
  setup :initialize_character

  def teardown
    @character = nil
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @character.id
    assert_response :success
  end

  test "should get create" do
    post :create, character: @character.attributes
    assert_redirected_to character_path(assigns(:character))
  end

  test "should get update" do
    put :update, id: @character.id, character: @character.attributes
    assert_redirected_to character_path(assigns(:character))    
  end

  test "should get destroy" do
    get :destroy, id: @character.id
    assert_redirected_to action: "index"
  end

  private
  def initialize_character
    @character = characters(:one)    
  end
end
