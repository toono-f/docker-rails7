users = [
  ['たけし', 20, 'サッカー'],
  ['さおり', 23, 'バレー'],
  ['たろう', 22, '野球']
]

users.each do |name, age, hobby|
  User.create(name:, age:, hobby:)
end
