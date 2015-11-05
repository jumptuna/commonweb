class PagesController < ApplicationController
	before_filter :set_ip

  def home

  end
  
  def login
  end
  
  def profilepage
  	@user = User.find(params[:id])
  	@name = @user.name
  	@email = @user.email
  	@users = User.all
  end

  

  def set_ip
  	@ip = request.ip
  end

end