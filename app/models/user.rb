class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :analises
  has_one :profile, dependent: :destroy

  after_create :create_profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def create_profile
    Profile.create(user: self, nome_de_usuario: self.email.split('@').first)
  end

end
