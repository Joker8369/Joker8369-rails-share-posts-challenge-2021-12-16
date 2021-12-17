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
  title: 'Covid-19. Que faut-il attendre du nouveau Conseil de défense sanitaire, vendredi ?',
  content: 'Réduire le délai avant la dose de rappel ?

L’exécutif entend absolument accélérer la campagne de rappel vaccinal. Avec l’accord des autorités scientifiques, il pourrait donc décider de réduire encore le délai requis entre la deuxième et la troisième dose, à ce jour de cinq mois. La question de la vaccination des 5-11 ans devrait aussi revenir en débat lors de cette réunion. Mercredi 15 décembre, sur TF1, Emmanuel Macron a jugé cette vaccination souhaitable, mais pas obligatoire.

Proximité des fêtes oblige, le Conseil de défense devrait enfin exhorter les Français à la prudence, lors des réveillons de Noël et du Nouvel an. À la manière des messages diffusés l’an dernier à pareille époque. Des conseils qui avaient été bien suivis.
Des piqûres d’office ?

Toujours sur TF1 mercredi, le chef de l’État a laissé entendre qu’une obligation vaccinale contre le coronavirus serait envisageable pour les 5,7 millions de Français de plus de 18 ans récalcitrants. « Cette hypothèse existe. Nous la regarderons avec pragmatisme dans les prochaines semaines. » Même si, selon lui, la France est quasiment déjà sous le coup de cette obligation. « 90 % des personnes en âge d’être vaccinées l’ont déjà été. »
Le Royaume-Uni isolé ?

L’extension d’Omicron au Royaume-Uni (88 376 nouveaux cas en 24 heures) inquiète la France. Le gouvernement de Jean Castex vient donc de réinstaurer « des motifs impérieux » pour les voyageurs en provenance et à destination du Royaume-Uni, à compter de ce samedi minuit. La validité d’un test négatif au départ du Royaume-Uni est réduite de 48 à 24 heures pour les personnes non-vaccinées et vaccinées. Un système d’isolement à l’arrivée en France sera également instauré. Il pourra être levé « au bout de 48 heures » en cas de test négatif. Ces motifs impérieux ne s’appliqueront pas aux ressortissants français, notamment.',
  url: "https://www.ouest-france.fr/sante/virus/coronavirus/covid-19-que-faut-il-attendre-du-nouveau-conseil-de-defense-sanitaire-vendredi-e8218aae-5eb1-11ec-b2cb-afc8b04d8652",
  user_id: "#{user1.id}"
)

Post.create!(
  title: 'SNCF : Les syndicats lèvent l’appel à la grève pour les TGV du Sud-Est',
  content: 'Ascenseur émotionnel pour les voyageurs qui comptaient prendre le train, ce premier week-end des vacances de Noël. Alors que la SNCF avait affirmé mercredi que les négociations avec les syndicats avaient échoué, la CGT-Cheminots et SUD-Rail ont finalement annoncé ce jeudi qu’ils levaient leurs appels à la grève sur l’axe TGV Sud-Est.

Initialement, un TGV sur deux était prévu sur cet axe à partir du vendredi 17 décembre et ce jusqu’au dimanche 19 décembre. Mercredi soir déjà, l’Unsa ferroviaire, l’autre syndicat qui avait déposé un préavis de grève, avait décidé de « sortir de la grève ».',
  url: "https://www.20minutes.fr/societe/3199555-20211216-sncf-syndicats-levent-appel-greve-tgv-sud",
  user_id: "#{user1.id}"
)
Post.create!(
  title: 'Le réchauffement climatique déstabilise plus que jamais les pôles',
  content: 'Les pôles se dérèglent toujours plus rapidement sous l’effet du changement climatique causé par les activités humaines. Au Nord, l’Arctique est propulsé dans un état radicalement différent de celui dans lequel il se trouvait il y a seulement quelques décennies, avec la neige et la glace qui laissent place à une végétation plus luxuriante et des vagues de chaleur plus fréquentes. Au Sud, l’Antarctique risque de voir une partie de l’un de ses principaux glaciers se désintégrer d’ici à cinq ans, accélérant la débâcle des glaces. Une série de travaux scientifiques, présentés mardi 14 décembre au cours de la réunion d’automne de l’Union américaine de géophysique, décrivent ces changements pour beaucoup irréversibles.

Le rapport annuel « Arctic Report Card », réalisé par 111 scientifiques de douze pays, montre un pôle Nord qui se transforme de manière « alarmante et indéniable ». Entre octobre et décembre 2020, l’Arctique a connu son automne le plus chaud depuis 1900, et l’année complète (octobre 2020 - septembre 2021) est la septième plus chaude jamais enregistrée.Le pôle Nord se réchauffe plus de deux fois plus vite que le reste du globe, voire quatre fois plus, selon les derniers travaux de chercheurs estimant que les précédents chiffres ont été sous-estimés. En cause, un phénomène appelé « amplification arctique » qui fonctionne comme un cercle vicieux : en fondant, la glace et la neige, très réfléchissantes, sont remplacées par de l’océan ou de la végétation, plus sombres, qui absorbent davantage les rayons du soleil. Il en découle une hausse des températures de l’air et de l’eau qui, à leur tour, accélèrent la fonte.',
  url: "https://www.lemonde.fr/planete/article/2021/12/16/le-rechauffement-climatique-destabilise-plus-que-jamais-les-poles_6106364_3244.html",
  user_id: "#{user2.id}"
)

puts 'posts ok'
