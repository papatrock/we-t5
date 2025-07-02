class Jogo < ApplicationRecord
  belongs_to :desenvolvedora
  has_many :analises, dependent: :destroy
  has_and_belongs_to_many :marcadors
  accepts_nested_attributes_for :analises, allow_destroy: true

  validates :nome, presence: true
  validates :desenvolvedora_id, presence: true
end
