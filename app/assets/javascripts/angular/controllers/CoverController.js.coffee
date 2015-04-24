app.controller 'CoverController', ['$scope', '$http', ($scope, $http) ->
  $scope.foo = "bar cover"

  $scope.getTodos = ->
    $http.get('/todos.json')
      .success ((data, foo, bar, baz) ->
        $scope.todos = data
      )

  $scope.getTodos()
]