10.times do |i|
  Todo.create name: "Todo #{i}", order: i 
end
