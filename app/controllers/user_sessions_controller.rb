class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    @user = login(params[:email], params[:password]) # loginメソッドで認証

    if @user
      redirect_to goals_path, notice: 'ログインに成功しました'
    else
      flash.now[:alert] = 'メールアドレスまたはパスワードが正しくありません'
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, status: :see_other
  end
end
