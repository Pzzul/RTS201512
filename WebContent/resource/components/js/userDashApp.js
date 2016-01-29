/**
 * 
 */

var dashApp = angular.module('dashApp', ['ngRoute', 'dashControllers']);

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