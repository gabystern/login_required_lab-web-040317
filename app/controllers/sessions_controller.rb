class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    if params[:name] != nil && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/index'
    else
      redirect_to '/sessions/new'
    end
  end

  # def secret
  # end

  def destroy
    session.delete :name
    redirect_to '/sessions/new'
  end

end
