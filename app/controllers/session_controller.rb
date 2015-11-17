class SessionController < ApplicationController

  def create
    session[:account] = GithubAccount.from_omniauth_blob request.env["omniauth.auth"]

    redirect_to :root
  end

  def destroy
    session[:account] = nil

    redirect_to :root
  end

end
