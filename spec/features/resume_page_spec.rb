feature 'Resume page' do

  include PageHelper

  scenario 'Visit the resume page' do
    visit resume_path
    check_resume_page(page)
  end

end
