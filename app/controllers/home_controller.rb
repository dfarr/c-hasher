require 'digest/sha1'

class HomeController < ApplicationController
  def index
  	@users = User.all
  	@response = ""

  	if request.post?
  		u = params[:username]
  		p = params[:hashed_password]

  		user = User.find_by_username(u)
  		if user != nil && user.hashed_password == hash(p)
  			@response = "Login successful!"
  		else
  			@response = "Login failed."
  		end
  	end

  	respond_to do |format|
  		format.html
  	end
  end

  def hash(password)
  	return Digest::SHA1.hexdigest password
  end
end
