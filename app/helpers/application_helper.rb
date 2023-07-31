module ApplicationHelper
    def nav_links
      if logged_in?
        link_to 'Logout', logout_path, method: :delete
      else
        link_to 'Register', register_path
      end
    end
  end
  