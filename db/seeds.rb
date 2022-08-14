standard_deck = Deck.create(name: "Standard")

standard_deck.suits.create([
  {name: "Cups"},
  {name: "Pentacles"},
  {name: "Swords"},
  {name: "Wands"}
])
standard_deck.suits.each do |suit|
  suit.cards.create([
    {name: "Ace"},
    {name: "Two"},
    {name: "Three"},
    {name: "Four"},
    {name: "Five"},
    {name: "Six"},
    {name: "Seven"},
    {name: "Eight"},
    {name: "Nine"},
    {name: "Ten"},
    {name: "Page"},
    {name: "Knight"},
    {name: "Queen"},
    {name: "King"},
  ])
end

majors = standard_deck.suits.create(name: "Majors")

majors.cards.create([
  {name: "The Fool"},
  {name: "The Magician"},
  {name: "The High Priestess"},
  {name: "The Empress"},
  {name: "The Emperor"},
  {name: "The Hierophant"},
  {name: "The Lovers"},
  {name: "The Chariot"},
  {name: "Strength"},
  {name: "The Hermit"},
  {name: "Wheel of Fortune"},
  {name: "Justice"},
  {name: "The Hanged Man"},
  {name: "Death"},
  {name: "Temperance"},
  {name: "The Devil"},
  {name: "The Tower"},
  {name: "The Star"},
  {name: "The Moon"},
  {name: "The Sun"},
  {name: "Judgement"},
  {name: "The World"}
])


if Rails.env.development?
  user = User.create(username: "devin", email: "devin@example.com", password: "password")
  ech = user.spreads.create(name: "Energy/Challenge/Advice")
  ech.slots.create([
    {name: "Energy"},
    {name: "Challenge"},
    {name: "Advice"}
  ])
end