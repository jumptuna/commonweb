class HomeController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def update
  	render file: "/Users/Matt/projects/commonweb/app/views/pages/home.html.erb"
  end
  # def profile
  # 	render file: "/Users/Matt/projects/commonweb/app/views/pages/profilepage.html"
  # end
  # def list
  # 	render file: "/Users/Matt/projects/commonweb/app/views/users/show.html.erb"
  # end
  # def sign
  # 	render template: "/users/new.html.erb"
  # end

  def profile
  	render file: "/Users/Matt/projects/commonweb/app/views/pages/profilepage.html.erb"
  end
  def login
  end
  
  protect_from_forgery with: :exception
end
