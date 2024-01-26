puts "Destruindo todos os registros de jogadoras"

# Limpa os registros existentes
Jogadora.destroy_all

# Arrays com nomes, números e ligas fictícias
nomes = ["Ana", "Beatriz", "Carla", "Daniela", "Eduarda", "Fernanda", "Gabriela", "Helena"]
sobrenomes = ["Silva", "Oliveira", "Santos", "Pereira", "Almeida", "Lima", "Martins", "Costa"]
numeros_derby = ["101", "202", "303", "404", "505", "606", "707", "808"]
ligas = ["London Roller Derby", "Glasgow Roller Derby"]

# Array de Derby Names prontos
derby_names_prontos = [
  "Blaze Thunderstrike",
  "Viper Venomous",
  "Rogue Havoc",
  "Stinger Frostbite",
  "Velocity Wildfire",
  "Thunder Phoenix",
  "Blaze Cyclone",
  "Rogue Quicksilver"
]

# Criação de 8 jogadoras de roller derby com Derby Names prontos

puts "Criando 8 novas jogadoras"


8.times do |i|
  Jogadora.create!(
    calling_name: nomes[i],
    family_name: sobrenomes[i],
    derby_name: derby_names_prontos[i],
    derby_number: numeros_derby[i],
    league: ligas.sample, # Seleção randômica de uma liga
    email: "#{nomes[i].downcase}@spacejammer.com",
    encrypted_password: "Space123"
  )
end

puts "Seed concluído com sucesso!"
