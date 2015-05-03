describe('homepage', function() {
  describe('todos', function() {
    it('includes the todos', function() {
      browser.get('http://localhost:3000');
      element.all(by.repeater('todo in todos')).then(function(todos) {
        expect(todos.length).toEqual(10);
      });
    });

    it('has two filtered lists of todos', function() {
      browser.get('http://localhost:3000');
      element.all(by.repeater('incompleteTodo in todos')).then(function(incompleteTodos) {
        element.all(by.repeater('completedTodo in todos')).then(function(completedTodos) {
          expect(incompleteTodos.length + completedTodos.length).toEqual(10)
        });
      });
    });

    // it('finds an incomplete item and completes it on click', function() {
    //   browser.get('http://localhost:3000');

    //   element.all(by.repeater('todo in todos')).then(function(todos) {
    //     element.all(by.repeater('completedTodos in todos')).then(function(completedTodos) {
    //       startingCompleted = completedTodos.length
    //       toComplete = todos.rows.column("complete task");
    //       toComplete.click();
    //       expect(completedTodos.length).toEqual(startingCompleted +1);
    //     });
    //   });
    // });
  });
});