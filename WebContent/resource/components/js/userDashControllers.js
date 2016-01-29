/**
 * 
 */

var dashControllers = angular.module('dashControllers', []);

dashControllers.controller('dashSearchCtrl', ['$scope', function($scope){
	
}]);

dashControllers.controller('dashProfileCtrl', ['$scope','$http', function($scope, $http){
	$http.get('profileData').success(function(data){
		$scope.profile = data;
	});
}]);

dashControllers.controller('dashOrderCtrl',['$scope', '$http', function($scope, $http){
	$http.get('orderData').success(function(data){
		$scope.orders = data;
	});
}]);