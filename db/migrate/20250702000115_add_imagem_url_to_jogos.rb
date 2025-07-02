class AddImagemUrlToJogos < ActiveRecord::Migration[8.0]
  def change
    add_column :jogos, :imagem_url, :string
  end
end
