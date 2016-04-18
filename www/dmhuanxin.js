var exec = require('cordova/exec');

var dmhuanxin = {
	
	// echo接口，msg为传入的参数，success, error为回调函数
　　echo : function(msg, success, error) {
　　　　exec(success, error, "dmhuanxin", "echo", [msg]);
　　}

};

window.dmhuanxin = dmhuanxin;