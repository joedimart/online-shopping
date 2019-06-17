 <p class = "lead">Shop Name</p>
 
 
 
 
 <div class = "list-group">
 
 	<c:forEach items= "${categories}" var = "AvailabilitySearch">
 		<a>${AvailabilitySearch.id} </a>
 		<a>${AvailabilitySearch.firstName} </a>
 		<a>${AvailabilitySearch.lastName} </a>
 		<a>${AvailabilitySearch.hours} </a>
 		<br />
 	</c:forEach>
 </div>