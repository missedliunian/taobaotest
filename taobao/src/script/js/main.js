//main.js
/*require 调用模块，接收二个参数。
第1个参数是一个数组，表示所依赖的模块
第2个参数是一个回调函数，当前面指定的所依赖的模块都加载成功后，它将被调用。
可以存在多个require*/

//配置模块  baseUrl以index.html开始
require.config({
    baseUrl:'../script/lib/',//基本路径要进入到require.js所在的文件夹
    paths:{//不允许添加扩展名
        'jquery':'jquery.min',  //paths中模块都会自动添加baseUrl的路径
        'jquery.validate':'jquery.validate',
        'messages_cn':'messages_cn',
        'jquery.cookie':'jquery.cookie'

    }
});


require(['../script/js/ajax.js','../script/js/effect.js','../script/js/messages_cn.js','../script/js/login.js'/*,'../script/js/details.js'*/,'../script/js/search.js']);//异步加载js文件
