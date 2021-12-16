# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts 'no users'
user1 = User.create!(
  nickname: 'User1',
  email: 'user1@gmail.com',
  password: 'tototo',
  password_confirmation: 'tototo'
)

user2 = User.create!(
  nickname: 'User2',
  email: 'user2@gmail.com',
  password: 'tititi',
  password_confirmation: 'tititi'
)
puts 'users ok'

Post.destroy_all
puts 'no posts'

Post.create!(
  title: 'Covid',
  content: 'lorem Ipsum',
  url: "https://www.francetvinfo.fr/economie/transports/sncf/greve-a-la-sncf/preavis-de-greve-leve-a-la-sncf-trafic-quasi-normal-ce-week-end-sur-l-axe-sud-est_4883487.html",
  user_id: "#{user1.id}"
)

Post.create!(
  title: 'Grève à la SNCF ',
  content: 'lorem Ipsum',
  url: "https://www.francetvinfo.fr/sante/maladie/coronavirus/vaccin/covid-19-quelles-sont-les-pistes-du-gouvernement-en-vue-du-conseil-de-defense-sanitaire-de-vendredi_4883065.html",
  user_id: "#{user1.id}"
)
Post.create!(
  title: 'Omar Raddad',
  content: 'lorem Ipsum',
  url: "https://www.francetvinfo.fr/societe/justice/la-justice-rouvre-le-dossier-omar-raddad-l-ex-jardinier-condamne-en-1994-pour-le-meurtre-de-son-employeuse-annonce-son-avocate_4883289.html",
  user_id: "#{user2.id}"
)

puts 'posts ok'
