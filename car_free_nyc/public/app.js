$(document).ready(function(){
	console.log("Hello world");
	// setInterval(getNewPledges, 5000);

});

var getNewPledges = function(){
	console.log("page refresh")
	$.ajax({
		url: "/pledge_confirmation",
		type: "GET",
		dataType:"script", 
	});
}
