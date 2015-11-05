class HomeController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 
  # def profile
  # 	render file: "/Users/Matt/projects/commonweb/app/views/pages/profilepage.html"
  # end
  # def list
  # 	render file: "/Users/Matt/projects/commonweb/app/views/users/show.html.erb"
  # end
  # def sign
  # 	render template: "/users/new.html.erb"
  # end

  
  def login
  end
#for clicking on list names in profilepage and showing other user's info
  def view
    User.find_each(:batch_size => 1) do |k|
      
      if (k.name == params[:name])
          return redirect_to profile_page_path(k.id)
      end
    end
    
  end
  
  protect_from_forgery with: :exception
end
