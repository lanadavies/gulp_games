require "test_helper"

class ContestantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contestant = contestants(:one)
  end

  test "should get index" do
    get contestants_url
    assert_response :success
  end

  test "should get new" do
    get new_contestant_url
    assert_response :success
  end

  test "should create contestant" do
    assert_difference("Contestant.count") do
      post contestants_url, params: { contestant: { name: @contestant.name, tournament_id: @contestant.tournament_id } }
    end

    assert_redirected_to contestant_url(Contestant.last)
  end

  test "should show contestant" do
    get contestant_url(@contestant)
    assert_response :success
  end

  test "should get edit" do
    get edit_contestant_url(@contestant)
    assert_response :success
  end

  test "should update contestant" do
    patch contestant_url(@contestant), params: { contestant: { name: @contestant.name, tournament_id: @contestant.tournament_id } }
    assert_redirected_to contestant_url(@contestant)
  end

  test "should destroy contestant" do
    assert_difference("Contestant.count", -1) do
      delete contestant_url(@contestant)
    end

    assert_redirected_to contestants_url
  end
end
