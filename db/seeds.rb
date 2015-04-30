arr = [
  "Add Bootstrap to app",
  "Seed better data to app",
  "Make slides",
  "Check git hooks",
  "Discuss presentation order",
  "Demo talk for coworkers",
  "Practice lectures",
  "Add MOAR CAT PICS",
  "Test integrations",
  "Incorporate team feedback"
]

10.times do |i|
  Todo.create name: arr[i], order: i 
end