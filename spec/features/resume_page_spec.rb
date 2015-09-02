feature 'Resume page' do

  include PageHelper

  scenario 'Visit the resume page' do
    begin
      visit resume_path
      fail 'We should not get here'
    rescue ActionController::RoutingError
      # cannot check external links
      # due to rack.  just consume exception
      # check page
      check_resume_page(page)
    end
  end

end
