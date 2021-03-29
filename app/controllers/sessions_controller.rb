class SessionsController < ApplicationController
 def new
 end

  def create
        if params[:name].nil? || params[:name].empty?
         # byebug
         redirect_to :login
       else
         session[:name] = params[:name]
         redirect_to '/'
       end
  end

end
