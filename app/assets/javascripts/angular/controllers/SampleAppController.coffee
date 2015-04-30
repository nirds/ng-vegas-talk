app.controller 'SampleAppController', ['$scope', '$http', ($scope, $http) ->
  $scope.getTodos = ->
    $http.get('/todos.json')
      .success ((data, foo, bar, baz) ->
        $scope.todos = data
      )

  $scope.getTodos()
]