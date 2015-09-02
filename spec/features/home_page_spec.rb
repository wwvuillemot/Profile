require 'rails_helper'

# Feature: Home page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
feature 'Home page' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  scenario 'visit the home page' do
    visit root_path
    expect(page).to have_content "Hi! I am Ward."
  end

  scenario 'visit the about me page from home' do
    visit root_path
    click_link('read_more_about_me')
    expect(page).to have_content 'Who Am I?'
  end

  scenario 'visit the portfolio page from home' do
    visit root_path
    click_link('read_more_portfolio')
    expect(page).to have_content '@ SHS'
  end

end
