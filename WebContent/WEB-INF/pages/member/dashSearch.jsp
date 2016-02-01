
<div class="container-fluid">
	<div class="col-md-9 col-md-offset-1">
		<form class="form-inline">
			<div class="form-group">
				<label\>From</label> <input ng-model="departureStation" type="text"
					class="form-control" placeholder="From">
			</div>
			<div class="form-group">
				<label>To</label> <input ng-model="arrivalStation" type="email"
					class="form-control" placeholder="To">
			</div>
			<div class="form-group">
				<label>Departure Date</label> <input class="form-control"
					placeholder="mm/dd/yy" ng-model="departureDate">
			</div>
			<button class="btn btn-default" ng-click="searchSubmit">Search</button>
		</form>
	</div>
</div>