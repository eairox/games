require 'test_helper'

class BollywoodMoviesControllerTest < ActionController::TestCase
  setup do
    @bollywood_movie = bollywood_movies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bollywood_movies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bollywood_movie" do
    assert_difference('BollywoodMovie.count') do
      post :create, :bollywood_movie => { :name => @bollywood_movie.name }
    end

    assert_redirected_to bollywood_movie_path(assigns(:bollywood_movie))
  end

  test "should show bollywood_movie" do
    get :show, :id => @bollywood_movie
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bollywood_movie
    assert_response :success
  end

  test "should update bollywood_movie" do
    put :update, :id => @bollywood_movie, :bollywood_movie => { :name => @bollywood_movie.name }
    assert_redirected_to bollywood_movie_path(assigns(:bollywood_movie))
  end

  test "should destroy bollywood_movie" do
    assert_difference('BollywoodMovie.count', -1) do
      delete :destroy, :id => @bollywood_movie
    end

    assert_redirected_to bollywood_movies_path
  end
end
