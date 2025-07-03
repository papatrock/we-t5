class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to root_path, notice: 'Perfil atualizado com sucesso.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_profile
        @profile = current_user.profile || Profile.create(user: current_user, nome_de_usuario: current_user.email.split('@').first)
  end

  def profile_params
    params.require(:profile).permit(:nome_de_usuario, :biografia, :genero_favorito, :avatar_url)
  end
end