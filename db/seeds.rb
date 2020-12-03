# Class Structure:
# - User (has_many :sets, :games) - seed Muppets as users; have dropdown selector to choose who you play as
#     - rails g resource User name:string image:string cumulative_score:integer --no-test-framework
# - Deck (belongs_to :user, has_many :cards)
#     - rails g resource Deck title:string user:belongs_to --no-test-framework
# - Card (belongs_to :deck)
#     - rails g resource Card side_a:string side_b:string deck:belongs_to --no-test-framework
# - Game (belongs_to :user, :deck)
#     - rails g resource Game player_name:string deck:belongs_to score:integer time_limit:integer --no-test-framework
# - Clock (not sure if I need just yet)

# binding.pry
Card.delete_all
Deck.delete_all
User.delete_all
# Game.delete_all

MUPPETS = [
    {name: "Beaker", photo: "/photos/dr_beaker.jpg"},
    {name: "Fozzy", photo: "/photos/fozzy_bear.webp"},
    {name: "Gonzo", photo: "/photos/gonzo_thegreat.jpg"},
    {name: "Kermit", photo: "/photos/kermit_frog.jpg"},
    {name: "Miss Piggy", photo: "/photos/miss_piggy.jpg"},
    {name: "Animal", photo: "/photos/mister_animal.jpeg"},
    {name: "Pepe", photo: "/photos/pepe_prawn.jpg"},
    {name: "Professor Bunsen", photo: "/photos/professor_bunsen.jpg"},
    {name: "Rizzo", photo: "/photos/rizzo_rat.png"},
    {name: "Sam Eagle", photo: "/photos/sam_eagle.jpg"},
    {name: "Scooter", photo: "/photos/scoo_ter.jpg"},
    {name: "Swedish Chef", photo: "/photos/swedish_chef.png"}
]

SET1 = [
    {side_a: "Tennessee", side_b: "Titans"},
    {side_a: "New England", side_b: "Patriots"},
    {side_a: "Tampa Bay", side_b: "Buccaneers"},
    {side_a: "Green Bay", side_b: "Packers"},
    {side_a: "Houston", side_b: "Texans"},
    {side_a: "Jacksonville", side_b: "Jaguars"},
    {side_a: "Indianapolis", side_b: "Colts"},
    {side_a: "Buffalo", side_b: "Bills"},
    {side_a: "Miami", side_b: "Dolphins"},
    {side_a: "Washington", side_b: "Football Team"},
    {side_a: "Seattle", side_b: "Seahawks"},
    {side_a: "Chicago", side_b: "Bears"},
    {side_a: "Minnesota", side_b: "Vikings"},
    {side_a: "Detroit", side_b: "Lions"},
    {side_a: "Kansas City", side_b: "Chiefs"},
    {side_a: "Denver", side_b: "Broncos"},
    {side_a: "Atlanta", side_b: "Falcons"},
    {side_a: "Carolina", side_b: "Panthers"},
    {side_a: "Pittsburg", side_b: "Steelers"},
    {side_a: "Baltimore", side_b: "Ravens"},
    {side_a: "Cleveland", side_b: "Browns"},
    {side_a: "Cincinnati", side_b: "Bengals"},
    {side_a: "Las Vegas", side_b: "Raiders"},
    {side_a: "Philadelphia", side_b: "Eagles"},
    {side_a: "Dallas", side_b: "Cowboys"},
    {side_a: "New Orleans", side_b: "Saints"},
    {side_a: "San Francisco", side_b: "49ers"},
    {side_a: "Arizona", side_b: "Cardinals"}
]

12.times do |i|
    User.create(
        id: (i + 1),
        name: MUPPETS[i][:name],
        image: MUPPETS[i][:photo],
        cumulative_score: 0
    )
end

beaker = User.find_by_id(1)
nfl_deck = beaker.decks.build(id: 1, title: "NFL teams")
nfl_deck.save

SET1.length.times do |i|
    deck = Deck.find_by_id(1)
    card = deck.cards.build(id: (i + 1), side_a: SET1[i][:side_a], side_b: SET1[i][:side_b])
    card.save
end

