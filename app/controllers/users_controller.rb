class UsersController < ApplicationController
  # 以下のアクションを追加
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
  end

  # 以下のアクションを追加
  def edit
    @user = User.find(params[:id])
  end

  # 以下のアクションを追加
  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  # 以下のアクションを追加
  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
