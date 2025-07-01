class CreateJoinTableJogosMarcadores < ActiveRecord::Migration[8.0]
  def change
    create_join_table :jogos, :marcadors do |t|
      # t.index [:jogo_id, :marcador_id]
      # t.index [:marcador_id, :jogo_id]
    end
  end
end
