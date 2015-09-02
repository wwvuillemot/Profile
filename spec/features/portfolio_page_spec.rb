feature 'Portfolio page' do

  include PageHelper

  scenario 'visit the portfolio page' do
    visit portfolio_path
    check_portfolio_page(page)
  end

end
