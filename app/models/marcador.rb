class Marcador < ApplicationRecord
  has_and_belongs_to_many :jogos
end
