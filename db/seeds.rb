puts "Limpando dados antigos"
Analise.destroy_all
Profile.destroy_all
Jogo.destroy_all
Marcador.destroy_all
Desenvolvedora.destroy_all
User.destroy_all

puts "Populando o banco de dados com dados iniciais"

nintendo = Desenvolvedora.create!(nome: "Nintendo")
fromsoftware = Desenvolvedora.create!(nome: "FromSoftware")
cdpr = Desenvolvedora.create!(nome: "CD Projekt Red")
larian = Desenvolvedora.create!(nome: "Larian Studios")

rpg = Marcador.create!(nome: "RPG")
aventura = Marcador.create!(nome: "Aventura")
mundo_aberto = Marcador.create!(nome: "Mundo Aberto")
acao = Marcador.create!(nome: "Ação")
soulslike = Marcador.create!(nome: "Soulslike")
plataforma = Marcador.create!(nome: "Plataforma")
indie = Marcador.create!(nome: "Indie")

admin_user = User.find_or_create_by!(email: 'admin@admin') do |user|
  user.password = '123admin'
  user.password_confirmation = '123admin'
  user.admin = true
end

puts "Login de Admin:"
puts "Email: admin@admin"
puts "Senha: 123admin"


witcher3 = Jogo.create!(
  nome: "The Witcher 3: Wild Hunt",
  ano: 2015,
  genero: "RPG de Ação",
  plataforma: "PC, PS4, Xbox One, Switch",
  desenvolvedora: cdpr,
  imagem_url: "https://image.api.playstation.com/vulcan/ap/rnd/202211/0711/kh4MUIuMmHlktOHar3lVl6rY.png"
)
witcher3.marcadors << [rpg, acao, mundo_aberto]

elden_ring = Jogo.create!(
  nome: "Elden Ring",
  ano: 2022,
  genero: "RPG de Ação",
  plataforma: "PC, PS5, Xbox Series X/S",
  desenvolvedora: fromsoftware,
  imagem_url: "https://upload.wikimedia.org/wikipedia/pt/thumb/0/0d/Elden_Ring_capa.jpg/330px-Elden_Ring_capa.jpg"
)
elden_ring.marcadors << [rpg, acao, mundo_aberto, soulslike]

zelda_botw = Jogo.create!(
  nome: "The Legend of Zelda: Breath of the Wild",
  ano: 2017,
  genero: "Aventura de Ação",
  plataforma: "Nintendo Switch, Wii U",
  desenvolvedora: nintendo,
  imagem_url: "https://upload.wikimedia.org/wikipedia/pt/0/0f/Legend_of_Zelda_Breath_of_the_Wild_capa.png"
)
zelda_botw.marcadors << [aventura, acao, mundo_aberto]

baldurs_gate3 = Jogo.create!(
  nome: "Baldur's Gate 3",
  ano: 2023,
  genero: "RPG",
  plataforma: "PC, PS5",
  desenvolvedora: larian,
  imagem_url: "https://image.api.playstation.com/vulcan/ap/rnd/202302/2321/3098481c9164bb5f33069b37e49fba1a572ea3b89971ee7b.jpg"
)
baldurs_gate3.marcadors << [rpg]

Analise.create!(
  jogo: elden_ring,
  user: admin_user,
  nota: 9.8,
  analise: "Analise teste criada pelo seed"
)

puts "Banco de dados populado com sucesso, manda bala professor"