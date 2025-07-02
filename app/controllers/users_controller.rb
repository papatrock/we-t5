class UsersController < ApplicationController
  before_action :require_admin

  def index
    @users = User.all
  end

  private

  def require_admin
    unless current_user.admin?
      flash[:alert] = "Você não tem permissão para executar esta ação."
      redirect_to root_path
    end
  end
end