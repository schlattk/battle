#require 'app'
require 'spec_helper'

RSpec.feature "Capybara feature test" do
  scenario "players can enter their names and see them on screen" do
    visit "/"

    fill_in :name1, with: "Kate"
    fill_in :name2, with: "Konrad"
    click_button "Submit"
    
    expect(page).to have_content "First player: Kate; second player: Konrad"
  end
end
