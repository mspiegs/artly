require 'test_helper'

class PiecesControllerTest < ActionController::TestCase
  setup do
    @piece = pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece" do
    assert_difference('Piece.count') do
      post :create, piece: { date: @piece.date, delivery_date: @piece.delivery_date, name: @piece.name, number_in_production: @piece.number_in_production, number_of_pieces: @piece.number_of_pieces, removal_date: @piece.removal_date, type: @piece.type, venue: @piece.venue }
    end

    assert_redirected_to piece_path(assigns(:piece))
  end

  test "should show piece" do
    get :show, id: @piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece
    assert_response :success
  end

  test "should update piece" do
    put :update, id: @piece, piece: { date: @piece.date, delivery_date: @piece.delivery_date, name: @piece.name, number_in_production: @piece.number_in_production, number_of_pieces: @piece.number_of_pieces, removal_date: @piece.removal_date, type: @piece.type, venue: @piece.venue }
    assert_redirected_to piece_path(assigns(:piece))
  end

  test "should destroy piece" do
    assert_difference('Piece.count', -1) do
      delete :destroy, id: @piece
    end

    assert_redirected_to pieces_path
  end
end
