/**
 * 
 */

var dashControllers = angular.module('dashControllers', []);

dashControllers.controller('dashSearchCtrl', ['$scope', '$http', function($scope, $http){
	$scope.stations = [];
	$scope.scheduleList = [];
	$scope.canShowTable = false;
	$http.get("/MyRTS/resource/station/get/all").success(function(data){
		angular.forEach(data, function(station){
			station.display = station.name + ', ' + station.city + ', ' + station.state;
		});
		$scope.stations = data;
		console.log($scope.stations);
	});
	
	$scope.show = function(){
		var param = $.param({departureStation: $scope.departureStation.originalObject.stationNo,
							 arrivalStation: $scope.arrivalStation.originalObject.stationNo,
							 departureDate: new Date($scope.departureDate).getTime()
							});
		console.log(param);
		$http({
			url: "/MyRTS/resource/schedule/get/by-stations-date",
			method: "POST",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			data: param
		}).
		success(function(data){
			$scope.scheduleList = data;
			angular.forEach($scope.scheduleList, function(schedule){
				var ticket_param = $.param({
					departureStation: $scope.departureStation.originalObject.stationNo,
					arrivalStation: $scope.arrivalStation.originalObject.stationNo,
					trainNo: schedule.train.trainNo
				});
				
				$http({
					url: "/MyRTS/resource/ticket/get/price/by-stations-train/",
					method: "POST",
					headers: {'Content-Type': 'application/x-www-form-urlencoded'},
					data: ticket_param
				}).success(function(data){
					console.log(data);
					schedule.price = data;
					$scope.canShowTable = true;
				});
			});
		});
	};
	
	$scope.addToCart = function(schedule){
		var order = {
			trainNo: schedule.train.trainNo,
			unitPrice: schedule.price,
			quantity: schedule.bookingQty
		}
		$scope.unpaidOrders.push(order);
		console.log($scope.unpaidOrders);
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