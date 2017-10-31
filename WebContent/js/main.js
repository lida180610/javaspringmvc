arr = ["img/09.jpg","img/10.jpg","img/11.jpg","img/12.jpg","img/14.jpg","img/15.jpg"]
index = 0;
window.onload = function(){
	img1 = document.getElementById("imgs")
	img1.src = arr[index++]
	setInterval("change1()",3000)
}
function change1(){
	if(index > arr.length-1)
		index = 0
	img1 = document.getElementById("imgs")
	img1.src = arr[index++]
}
