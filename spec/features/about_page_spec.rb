feature 'About page' do

  include PageHelper

  scenario 'Visit the about page' do
    visit about_me_path
    check_about_me_page(page)
  end

end
