feature 'Home page' do

  include PageHelper

  scenario 'visit the home page' do
    visit root_path
    check_home_page(page)
  end

  scenario 'visit the about me page from home' do
    visit root_path
    click_link('read_more_about_me')
    check_aboutme_page(page)
  end

  scenario 'visit the portfolio page from home' do
    visit root_path
    click_link('read_more_portfolio')
    check_portfolio_page(page)
  end

  scenario 'visit the resume page from home' do
    visit root_path
    begin
      click_link('nav_resume')
      fail 'We should not get here'
    rescue ActionController::RoutingError
      # cannot check external links
      # due to rack.  just consume exception
      # check page
      check_resume_page(page)
    end
  end

  scenario 'visit the resume page from home' do
    visit root_path
    click_link('nav_portfolio')
    check_portfolio_page(page)
  end

end
