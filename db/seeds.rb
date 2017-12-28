# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cadastrando Empresas..."
  companies = Admin::Company.create([{name: 'Ford - Aeroporto', active: 'a'},
                             {name: 'Ford - Ciaasa', active: 'a'},
                             {name: 'Ford - Aparecida', active: 'a'},
                             {name: 'Ford - Anápolis', active: 'a'},
                             {name: 'Ford - Nações SP', active: 'a'},
                             {name: 'Ford - Guarulhos SP', active: 'a'},
                             {name: 'Ford - Morumbi SP', active: 'a'},
                             {name: 'Ford Caminhões - Rio Verde', active: 'a'},
                             {name: 'Ford Caminhões - Goiânia', active: 'a'},
                             {name: 'Ford Caminhões - Itumbiara', active: 'a'},
                             {name: 'Troller - Goiânia ', active: 'a'},
                             {name: 'Troller - Nações', active: 'a'},
                             {name: 'Renault - T-63', active: 'a'},
                             {name: 'Renault - Pro+', active: 'a'},
                             {name: 'Corretora', active: 'a'},
                             {name: 'Despachante', active: 'a'},
                             {name: 'Fazendas', active: 'a'},
                             {name: 'Serviços Financeiros', active: 'a'}])
puts "Empresas Cadastradas com sucesso."


puts "Cadastrando Fornecedores...."
  providers = Admin::Provider.create!([{name: 'Primetek'},
                                       {name: 'Cobra - ConnectWork'},
                                       {name: 'HighTech Informática'},
                                       {name: 'HardLink'}])
puts "Fornecedores cadastrados com sucesso."
