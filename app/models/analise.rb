class Analise < ApplicationRecord
  belongs_to :user
  belongs_to :jogo

  validates :user_id, uniqueness: { scope: :jogo_id, message: "Você já fez uma análise para este jogo." }
end
