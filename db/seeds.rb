puts "Limpando banco de dados..."
Marcador.destroy_all
Desenvolvedora.destroy_all
Jogo.destroy_all

puts "Criando Desenvolvedoras..."
nintendo = Desenvolvedora.create!(nome: "Nintendo")
fromsoftware = Desenvolvedora.create!(nome: "FromSoftware")
cdpr = Desenvolvedora.create!(nome: "CD Projekt Red")
larian = Desenvolvedora.create!(nome: "Larian Studios")

puts "Criando Marcadores..."
Marcador.create!([
  { nome: "RPG" },
  { nome: "Aventura" },
  { nome: "Mundo Aberto" },
  { nome: "Ação" },
  { nome: "Soulslike" },
  { nome: "Plataforma" },
  { nome: "Indie" }
])

puts "Criando usuário Admin..."
User.find_or_create_by!(email: 'admin@admin') do |user|
  user.password = '123admin'
  user.password_confirmation = '123admin'
  user.admin = true
end

puts "Login de Admin:"
puts "Email: admin@admin"
puts "Senha: 123admin"

puts "Banco de dados populado com sucesso!"