require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  setup do
    @game = games(:one)
  end

  test "visiting the index" do
    visit games_url
    assert_selector "h1", text: "Games"
  end

  test "creating a Game" do
    visit games_url
    click_on "New Game"

    fill_in "Away score", with: @game.away_score
    fill_in "Away team", with: @game.away_team
    fill_in "Date", with: @game.date
    fill_in "Game text", with: @game.game_text
    fill_in "Home score", with: @game.home_score
    fill_in "Home team", with: @game.home_team
    fill_in "Mom", with: @game.mom
    fill_in "Rate team", with: @game.rate_team
    fill_in "User", with: @game.user_id
    click_on "Create Game"

    assert_text "Game was successfully created"
    click_on "Back"
  end

  test "updating a Game" do
    visit games_url
    click_on "Edit", match: :first

    fill_in "Away score", with: @game.away_score
    fill_in "Away team", with: @game.away_team
    fill_in "Date", with: @game.date
    fill_in "Game text", with: @game.game_text
    fill_in "Home score", with: @game.home_score
    fill_in "Home team", with: @game.home_team
    fill_in "Mom", with: @game.mom
    fill_in "Rate team", with: @game.rate_team
    fill_in "User", with: @game.user_id
    click_on "Update Game"

    assert_text "Game was successfully updated"
    click_on "Back"
  end

  test "destroying a Game" do
    visit games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game was successfully destroyed"
  end
end
