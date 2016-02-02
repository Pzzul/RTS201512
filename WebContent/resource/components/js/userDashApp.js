/**
 * 
 */

var dashApp = angular.module('dashApp', ['ngRoute', 'dashControllers', 'angucomplete-alt', '720kb.datepicker']);

dashApp.config(['$routeProvider',
  function($routeProvider){
	$routeProvider.
	  when('/search',{
		  templateUrl: 'search.html',
		  controller: 'dashSearchCtrl'
	  }).
	  when('/profile',{
		 templateUrl: 'profile.html',
		 controller: 'dashProfileCtrl'
	  }).
	  when('/orders',{
		 templateUrl: 'order.html',
		 controller: 'dashOrderCtrl'
	  }).
	  otherwise({
		  redirectTo: '/search'
	  });
}]);

dashApp.controller('dashCartCtrl', ['$scope', '$http', function($scope, $http){
	$scope.unpaidOrders = [];
	$scope.showCart = false;
}]);