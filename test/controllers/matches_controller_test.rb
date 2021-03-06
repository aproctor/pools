require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post :create, match: { away_score: @match.away_score, away_team_id: @match.away_team_id, end_time: @match.end_time, home_score: @match.home_score, home_team_id: @match.home_team_id, league_id: @match.league_id, spread: @match.spread, start_time: @match.start_time }
    end

    assert_redirected_to match_path(assigns(:match))
  end

  test "should show match" do
    get :show, id: @match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match
    assert_response :success
  end

  test "should update match" do
    patch :update, id: @match, match: { away_score: @match.away_score, away_team_id: @match.away_team_id, end_time: @match.end_time, home_score: @match.home_score, home_team_id: @match.home_team_id, league_id: @match.league_id, spread: @match.spread, start_time: @match.start_time }
    assert_redirected_to match_path(assigns(:match))
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match
    end

    assert_redirected_to matches_path
  end
end
