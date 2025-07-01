class CreateAnalises < ActiveRecord::Migration[8.0]
  def change
    create_table :analises do |t|
      t.float :nota
      t.text :analise
      t.references :jogo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
