class CreateMarcadors < ActiveRecord::Migration[8.0]
  def change
    create_table :marcadors do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
