class SessionsController < ApplicationController

  def create
    session[:user] = GithubUser.from_omniauth_blob request.env["omniauth.auth"]

    redirect_to :root
  end

end
