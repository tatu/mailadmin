# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '85088e96dcf6407a4d939aaec9940c64'

  protected
    def authenticate
      unless session["auth"]
        session["return_to"] = request.request_uri
        redirect_to :controller => "login"
        return false
      end
    end
   def admin
	unless session["auth"].id == 3
	  redirect_to :controller => "users", :action => "showuser", :id => session["auth"].id
	  return false
        end
    end
end
