describe 'homepage', ->
  describe 'todos', ->
    it 'includes the todos', ->
      browser.get 'http://localhost:3000'

      element.all(by.repeater('todo in todos')).then (todos) ->
        expect(todos.length).toEqual 10
