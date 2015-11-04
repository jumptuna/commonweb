class LoginController < ActionController::Base
  @name = ""
  @email = ""
  def search
    
    User.find_each(:batch_size => 1) do |u|
      
      if (u.name == params[:q] && u.password == params[:l])
          
          @name = u.name
          @email = u.email

          render file: '/Users/Matt/projects/commonweb/app/views/pages/profilepage.html.erb' and return
              
          break
      end
    end
    render file: '/Users/Matt/projects/commonweb/app/views/pages/login.html.erb'


  end
  

  
  
  protect_from_forgery with: :exception
end
