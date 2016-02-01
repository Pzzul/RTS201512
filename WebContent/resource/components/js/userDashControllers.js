/**
 * 
 */

var dashControllers = angular.module('dashControllers', []);

dashControllers.controller('dashSearchCtrl', ['$scope', '$http', function($scope, $http){
	
	var searchSubmit = function(){
		$http.post('resource/schedule/get/by-stations-date', 
				departureStation,
				arrivalStation,
				departureDate).
			success(function(data){
				$scope.trainScheduleList = data;
			});
	}
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