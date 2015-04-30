app.controller 'SampleAppController', ['$scope', '$http', ($scope, $http) ->
  $scope.getTodos = ->
    $http.get('/todos.json')
      .success ((data, status, headers, config) ->
        $scope.todos = data
      )

  $scope.getTodos()

  $scope.completeItem = (item) ->
    $http.patch('/todos/' + item.id + ".json", {todo: {done: true}})
      .success ((data, status, headers, config) ->
        item.done = true
      )

  $scope.reopenItem = (item) ->
    $http.patch('/todos/' + item.id + ".json", {todo: {done: false}})
      .success ((data, status, headers, config) ->
        item.done = false
      )
]