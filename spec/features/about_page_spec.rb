feature 'About page' do

  include PageHelper

  scenario 'Visit the about page' do
    visit aboutme_path
    check_aboutme_page(page)
  end

end
