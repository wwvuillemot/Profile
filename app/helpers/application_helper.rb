module ApplicationHelper

  def is_active_path(path)
    path == request.path
  end

  def link_to_github
    'http://github.com/wwvuillemot/Profile'
  end

  def link_to_linkedin
    'http://linkedin.com/in/wwvuillemot'
  end

  def link_to_wardspics
    'http://wardspics.com'
  end

end
