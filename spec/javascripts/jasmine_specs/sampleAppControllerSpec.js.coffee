describe 'SampleAppController', ->

  $scope = {}
  controller = {}
  $q = {}

  beforeEach ->
      module('ng-vegas')

  beforeEach inject((_$controller_, _$q_, $injector, $httpBackend) ->
    $controller = _$controller_
    $scope = {}
    $q = _$q_
    $httpBackend.when('GET', '/todos.json')
      .respond([{id: 0, name: "foo", done: false}, {id: 1, name: 'bar', done: true}])
    $httpBackend.when('PATCH', '/todos/3.json"')
      .respond({done: true})

    controller = $controller('SampleAppController', $scope: $scope)
    $httpBackend.flush()
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
      $scope.getTodos()
      expect($scope.todos).not.toEqual(null)

  describe '$scope.completeItem', ->
    it 'changes an incomplete item\'s status to complete', (done) ->
      item = {name: 'foo', id: 3, done: false}
      deferred = $q.defer()

      $scope.completeItem(item).then ((data) ->
        deferred.resolve('some stuff')
      )

      deferred.promise.then ((value) ->
        expect(item.done).toEqual(false)
      )
      done()
      # this totally isn't working--not sure what's up with the promise test