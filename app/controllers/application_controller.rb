class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_companies
  before_filter :get_breadcrumbs

  def get_companies
    @companies = Company.find_all
  end

  def get_breadcrumbs
    paths = request.path.split '/'
    @breadcrumbs = []
    breadcrumbs_path = ''
    paths.shift
    paths.each do |path|
      path_as_slug = path.to_sym
      company = Company.find(path_as_slug)
      label = company ? company.headline : path.humanize
      breadcrumbs_path = breadcrumbs_path + '/' + path
      @breadcrumbs<< { label: label, path: breadcrumbs_path }
    end
  end
end
