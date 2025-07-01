class CreateJogos < ActiveRecord::Migration[8.0]
  def change
    create_table :jogos do |t|
      t.string :nome
      t.integer :ano
      t.string :genero
      t.string :plataforma
      t.references :desenvolvedora, null: false, foreign_key: true

      t.timestamps
    end
  end
end
