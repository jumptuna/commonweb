class LoginController < ActionController::Base
  @name = ""
  @email = ""
  def search

    
    User.find_each(:batch_size => 1) do |u|
      
      if (u.name == params[:q] && u.password == params[:l])
          return redirect_to profile_page_path(u.id)
      end
    end
    redirect_to login_path
  end
  
  

  
  
  protect_from_forgery with: :exception
end
