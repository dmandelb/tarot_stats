standard_deck = Deck.create(name: "Standard")

standard_deck.suits.create([
  {name: "Cups"},
  {name: "Pentacles"},
  {name: "Swords"},
  {name: "Wands"}
])
standard_deck.suits.each do |suit|
  suit.cards.create([
    {value: "Ace"},
    {value: "Two"},
    {value: "Three"},
    {value: "Four"},
    {value: "Five"},
    {value: "Six"},
    {value: "Seven"},
    {value: "Eight"},
    {value: "Nine"},
    {value: "Ten"},
    {value: "Page"},
    {value: "Knight"},
    {value: "Queen"},
    {value: "King"},
  ])
end


if Rails.env.development?
  # Uncomment after users have been Devised

  # user = User.create(username: "devin", email_address: "devin@example.com", password: "password")
  # ech = user.spreads.create(name: "Energy/Challenge/Advice")
  # ech.slots.create([
  #   {name: "Energy"},
  #   {name: "Challenge"},
  #   {name: "Advice"}
  # ])
end