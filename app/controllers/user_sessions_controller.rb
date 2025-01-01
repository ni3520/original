class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    @user = login(params[:email], params[:password]) # loginメソッドで認証

    if @user
      redirect_to goals_path
    else
      flash.now[:alert] = 'メールアドレスまたはパスワードが間違っています'
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, status: :see_other
  end
end
