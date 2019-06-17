 <p class = "lead">Shop Name</p>
 
 
 
 
 <div class = "list-group">
 
 	<c:forEach items= "${categories}" var = "category">
 		<a>${category.name} </a>
 		<br />
 	</c:forEach>
 </div>