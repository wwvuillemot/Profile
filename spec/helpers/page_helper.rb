module PageHelper
  def check_portfolio_page(page)
    expect(page).to have_content "@ SHS"
    expect(page).to have_content "@ Xbox"
    expect(page).to have_content "@ Amazon"
    expect(page).to have_content "@ Boeing"
    expect(page).to have_content "@ SeattleAstro"
  end

  def check_aboutme_page(page)
    expect(page).to have_content 'Who Am I?'
  end

  def check_home_page(page)
    expect(page).to have_content "Hi! I am Ward."
  end

  def check_resume_page(page)
    expect(page).to have_http_status(:redirect)
  end
end
