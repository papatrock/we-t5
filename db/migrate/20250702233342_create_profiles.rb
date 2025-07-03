class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.string :nome_de_usuario
      t.text :biografia
      t.string :genero_favorito
      t.string :avatar_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
