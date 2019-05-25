//==CONTROLLER==
//--User--
//--login--

$(document).on("click","#btnLogin",function()
		{
			var result = isValidFormLogin();
			if(result=="true")
				{
					$("#formLogin").submit();
				}
			else
				{
					$("#divStsMsgLogin").html(result);
				}
		});


//==CLIENT-MODEL==
//--User--
function isValidFormLogin()
{
	if($.trim($("#txtUserName").val())=="")
		{
			return "Enter Username";
		}
	if($.trim($("#txtPassword").val())=="")
		{
			return "Enter Password";
		}
	return "true";
}


//=======
function isValidFormitem()
{
	if($.trim($("#txtItemName").val())=="")
	{
		return "Enter Item Name";
		return "true/false";
	}
}


//===item save update

$(document).on("click","#btnSave",function()
	{
	var result = isValidFormItem();
	if(result=="true")
		{
			$("#formItems").submit();
		}
	else
		{
			$("#divStsMsgItems").html(result);			
		}
	}		
);

//==edit
$(document).on("click","#btnEdit",function()
	{
		$("#hidMode").val("update");
		$("#hidID").val($(this).attr("param"));
		$("#txtItemName").val($(this).closest("tr").find('td:eq(1)').text());
		$("#txtItemDesc").val($(this).closest("tr").find('td:eq(2)').text());
	});

//== remove
$(document).on("click","#btnRemove",function()
		{
			$("#hidMode").val("remove");
			$("#hidID").val($(this).attr("param"));
			var res = confirm("Are you sure?");
				if (res == true)
					{
					$("#formItems").submit();
					}
		});


<%@ page import=
