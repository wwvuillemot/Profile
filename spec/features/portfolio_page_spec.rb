require 'rails_helper'

# Feature: Home page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
feature 'Portfolio page' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  scenario 'visit the portfolio page' do
    visit portfolio_path
    expect(page).to have_content "@ SHS"
    expect(page).to have_content "@ Xbox"
    expect(page).to have_content "@ Amazon"
    expect(page).to have_content "@ Boeing"
  end

end
