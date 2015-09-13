module PageHelper
  def check_portfolio_page(page)
    expect(page).to have_content "@SHS"
    expect(page).to have_content "@Xbox"
    expect(page).to have_content "@Amazon"
    expect(page).to have_content "@Boeing"
    expect(page).to have_content "@SeattleAstro"
  end

  def check_company_page(page, company)
    expect(page).not_to have_content "@ #{company.short}"
    expect(page).to have_content CGI.unescapeHTML(company.title)
  end

  def check_about_me_page(page)
    expect(page).to have_content 'Who Am I?'
  end

  def check_home_page(page)
    expect(page).to have_content "Hi! I'm Ward."
  end

  def check_resume_page(page)
    expect(page).to have_http_status(:redirect)
  end
end
