function draw_table(){
    $("#results").empty();
    $.getJSONuncached = function(url) {
        return $.ajax({
            url: url,
            type: 'GET',
            cache: false,
            success: function(html) {
                $("#results").append(html);
            }
        });
    };
    $.getJSONuncached("/get/html")
};
 //seleccionar fila 
function select_row()
{
	$("#results tbody tr[id]").click(function ()
	{
		$(".selected").removeClass("selected");
		$(this).addClass("selected");
		var student = $(this).prevAll("tr").children("td[colspan='3']").length - 1;
		//var entree = $(this).attr("id") - 1;
		delete_row(student);
	})
};
// Eliminar fila 

function delete_row(stu)
{
	$("#delete").click(function ()
	{
		$.ajax(
		{
			url: "/post/delete",
			type: "POST",
			data:
			{
				student: stu
				
			},
			cache: false,
			success: setTimeout(draw_table, 1000)
		})
	})
};


$(document).ready(function(){
    draw_table();
})