window.BeforeUnloadEvent = function(){
	console.log(12345)
	alert("0.0.0.0")
}
function validate(){
	username = document.getElementById("username").value
	u_password = document.getElementById("password").value
	reg = /^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/;
	tmp = document.getElementById("usernameReg")
	if (false) {
		tmp.style.display = "block"
	} else{
		tmp.style.display = "none"
		if(u_password.length>0){
			form = document.getElementById("formLogin")
			form.submit()
		}
	}
}
function change(){
	username = document.getElementById("username").value
	username = username.toUpperCase()
	document.getElementById("username").value=username
}
function deleteRole(){
	value = prompt("角色删除后不能恢复,您确定要删除吗?\n如果确定,请在下方数据输入 '我要删除'")
			if(value=="我要删除")
				console.log("删除成功")
}
