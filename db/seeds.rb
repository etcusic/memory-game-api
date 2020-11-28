Class Structure:
- User (has_many :sets, :games) - seed Muppets as users; have dropdown selector to choose who you play as
    - rails g model User name:string cumulative_score:integer --no-test-framework
- Deck (belongs_to :user, has_many :cards)
    - rails g model Deck title:string user:belongs_to --no-test-framework
- Card (belongs_to :deck)
    - rails g model Card side_a:string side_b:string set:belongs_to --no-test-framework
- Game (belongs_to :user, :deck)
    - rails g model Game player_name:string deck:belongs_to score:integer time_limit:integer --no-test-framework
- Clock (not sure if I need just yet)