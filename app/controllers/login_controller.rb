class LoginController < ApplicationController
skip_filter :authenticate

 def logout(msg = "")
    reset_session
      flash[:notice] = msg if msg.length
    redirect_to '/'
  end

 def login_in
    password = params[:crypt].crypt(params[:crypt])
      username = params[:email]
        auth = User.find(:first, :conditions => [ "email = '%s' AND crypt = '%s'", username, password ] )
          if auth
                session["auth"] = auth
                redirect_to :controller => 'users', :action => 'showuser', :id => auth.id 
          else
                redirect_to :controller => 'login', :action => 'logout'
         end
     end
end
