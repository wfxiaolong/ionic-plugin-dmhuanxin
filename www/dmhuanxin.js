var exec = require('cordova/exec');

var dmhuanxin = {
	
	// echo接口，msg为传入的参数，success, error为回调函数
　　echo : function(msg, success, error) {
　　　　exec(success, error, "dmhuanxin", "echo", [msg]);
　　},

	// 初始化环信的登陆接口
	// var params = {
	// 	token:"50e6e69c085417b15fc334706a11efd2",
	// 	psw:"45875780"
	// }
	init : function(params, success, error) {
　　　　exec(success, error, "dmhuanxin", "init", [params]);
	},

	// 医生端或者进去聊天页面接口
	// var params = {
	// 	uid:"39",
	// 	token:"MTY1MzIxYzM2NDRlNzVlZjlkNzk4ODEzYzY4YWUxZDE",
	// 	role:"DMKBMRoleDoctor",
	// 	avatarURL:"http://q.qlogo.cn/qqapp/101028709/A866B23A89BBCD0661D5F475B88BF153/100"
	// }
	conversation : function(params, success, error) {
　　　　exec(success, error, "dmhuanxin", "conversation", [params]);
	},

	// 直接进入单聊页面：auth本人信息，target对方信息，客户端
	// var auth = {
	// 	avatar_url:"1",
	// 	consult_id:"10",
	// 	create_at:"1559938788",
	// 	doctor_id:"39",
	// 	doctor_name:"junyuan",
	// 	easemob_username:"c833a540059c4e86b92aca86797da4d1"
	// }
	// var target = {
	// 	uid:"40",
	// 	token:"N2NjYzg1Yjg3ZGQxMWJkYTdjNGU5YTQ2ZGM0OGY3MDg",
	// 	role:"DMKBMRolePatient",
	// 	avatarURL:"http://q.qlogo.cn/qqapp/101028709/A866B23A89BBCD0661D5F475B88BF153/100"
	// }
	chart : function(auth, target, success, error) {
		exec(success, error, "dmhuanxin", "chat", [auth, target]);
	}

};

window.dmhuanxin = dmhuanxin;