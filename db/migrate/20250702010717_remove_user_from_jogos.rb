class RemoveUserFromJogos < ActiveRecord::Migration[8.0]
  def change
    remove_reference :jogos, :user, null: false, foreign_key: true
  end
end
