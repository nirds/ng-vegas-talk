var app = angular.module("ng-vegas", ["ngRoute", 'templates']);

app.config(["$routeProvider", "$locationProvider", function($routeProvider, $locationProvider) {
  $locationProvider.html5Mode(true);
  $routeProvider
    .when("/",
      { templateUrl: "cover.html",
        controller: "CoverController" })
    .when("/1",
      { templateUrl: "one.html",
        controller: "PageOneController" })
    .otherwise({ redirectTo: "/" });
}]);