var app = angular.module("ng-vegas", ["ngRoute", 'templates']);

app.config(["$routeProvider", "$locationProvider", function($routeProvider, $locationProvider) {
  $locationProvider.html5Mode(true);
  $routeProvider
    .when("/",
      { templateUrl: "sample-app.html",
        controller: "SampleAppController" })
    .otherwise({ redirectTo: "/" });
}]);