require 'test_helper'

class AffiliationsControllerTest < ActionController::TestCase
 
  setup :initialize_affiliation

  def teardown
    @affiliation = nil
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @affiliation.id
    assert_response :success
  end

  test "should get create" do
    post :create, affiliation: @affiliation.attributes
    assert_redirected_to affiliation_path(assigns(:affiliation))
  end

  test "should get update" do
    put :update, id: @affiliation.id, affiliation: @affiliation.attributes
    assert_redirected_to affiliation_path(assigns(:affiliation))    
  end

  test "should get destroy" do
    get :destroy, id: @affiliation.id
    assert_redirected_to action: "index"
  end

  private
  def initialize_affiliation
    @affiliation = affiliations(:one)    
  end

end
