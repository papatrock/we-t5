class CreateDesenvolvedoras < ActiveRecord::Migration[8.0]
  def change
    create_table :desenvolvedoras do |t|
      t.string :nome

      t.timestamps
    end
  end
end
