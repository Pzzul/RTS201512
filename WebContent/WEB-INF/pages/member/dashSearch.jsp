
<div class="container-fluid">
	<div class="col-md-9">
		<form class="form-inline">
			<div class="form-group">
				<label>From</label> 
				<div angucomplete-alt id="ds"
					  placeholder="From"
					  field-required="true"
					  pause="100"
					  selected-object="departureStation"
					  local-data="stations"
					  search-fields="display"
					  title-field="display"
					  minlength="1"
					  input-class="form-control form-control-small"
					  match-class="highlight"></div>
			</div>
			<div class="form-group">
				<label>To</label> 
				<div angucomplete-alt id="as"
					  placeholder="To"
					  field-required="true"
					  pause="100"
					  selected-object="arrivalStation"
					  local-data="stations"
					  search-fields="display"
					  title-field="display"
					  minlength="1"
					  input-class="form-control form-control-small"
					  match-class="highlight"></div>
			</div>
			<div class="form-group">
				<label>Departure Date</label>
				<datepicker date-min-limit="2015/10/08"
					date-format="{{'MM/dd/yyyy'}}"
					button-prev="<i class='fa fa-arrow-left'></i>"
					button-next="<i class='fa fa-arrow-right'></i>" required>
					<input ng-model="departureDate" type="text"
						placeholder="Input Departure Date"
						class="form-control form-control-small"/>
				</datepicker>
			</div>
			<button class="btn btn-default" ng-click="show()">Search</button>
		</form>
	</div>
	<div ng-show="canShowTable">
		<table>
			<thead>
				<th>Train No.</th>
				<th>Available Ticket</th>
				<th>price</th>
				<th>tickets</th>
			</thead>
			<tbody>
				<tr ng-repeat="schedule in scheduleList">
					<td>{{schedule.train.trainNo}}</td>
					<td>{{schedule.availableTickets}}</td>
					<td>{{schedule.price}}</td>
					<td>
						<input id="bookingQty" 
						name="bookingQty" type="number" 
						max=100 width=10 placeholder="quantity" 
						ng-model="schedule.bookingQty" />
					</td>
					<td>
						<button ng-click="addToCart(schedule)">add to cart</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>