users = [
  ['たけし', 20, 'サッカー'],
  ['さおり', 23, 'バレー'],
  ['たろう', 22, '野球']
]

users.each do |name, age, hobby|
  User.create(name:, age:, hobby:)
end

todos = [
  ['サッカーを観戦', false],
  ['野球を観戦', false],
  ['バレーを観戦', false]
]

todos.each do |title, completed|
  Todo.create(title:, completed:)
end
