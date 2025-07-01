json.extract! jogo, :id, :nome, :ano, :genero, :plataforma, :desenvolvedora_id, :created_at, :updated_at
json.url jogo_url(jogo, format: :json)
