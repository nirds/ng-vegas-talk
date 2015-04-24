describe 'CoverController', ->

  $scope = {}
  controller = {}

  beforeEach inject((_$controller_, $injector) ->
    $controller = _$controller_
    $scope = {}
    controller = $controller('CoverController', $scope: $scope)
    $httpBackend = $injector.get('$httpBackend')
    return
  )

  beforeEach inject((_$location_, _$route_, _$rootScope_) ->
    $location = _$location_
    $route = _$route_
    $rootScope = _$rootScope_
    return
  )

  describe '$scope.getTodos', ->
    it 'gets the todos', ->
      expect($scope.todos).toEqual(null)
      $scope.getTodos()
      expect($scope.todos).not.toEqual(null)
