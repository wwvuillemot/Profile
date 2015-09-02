module ApplicationHelper

  def is_active_path(path)
    path == request.path
  end

end
