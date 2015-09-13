feature 'Portfolio page' do

  include PageHelper

  scenario 'visit the portfolio page' do
    visit portfolio_path
    check_portfolio_page(page)
  end

  scenario 'visit the company pages' do
    Company.find_all.each do |slug, company|
      visit portfolio_path(company: slug)
      check_company_page(page, company)
    end
  end


end
