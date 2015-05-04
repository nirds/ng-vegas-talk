var app = angular.module("ng-vegas", ["ngRoute", 'templates']);

app.config(["$routeProvider", "$locationProvider", function($routeProvider, $locationProvider) {
  $locationProvider.html5Mode(true);
  $routeProvider
    .when("/",
      { templateUrl: "sample-app.html",
        controller: "SampleAppController" })
    .when("/1",
      { templateUrl: "one.html" })
    .when("/2",
      { templateUrl: "two.html" })
    .when("/3",
      { templateUrl: "three.html" })
    .when("/4",
      { templateUrl: "four.html" })
    .when("/5",
      { templateUrl: "five.html" })
    .when("/6",
      { templateUrl: "six.html" })
    .when("/7",
      { templateUrl: "seven.html" })
    .otherwise({ redirectTo: "/" });
}]);