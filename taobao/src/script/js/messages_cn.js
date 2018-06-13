define(['jquery','jquery.validate'],function () {
    jQuery.extend(jQuery.validator.messages, {
        required: "必选字段",
        remote: "请修正该字段",
        email: "请输入正确格式的电子邮件",
        url: "请输入合法的网址",
        date: "请输入合法的日期",
        dateISO: "请输入合法的日期 (ISO).",
        number: "请输入合法的数字",
        digits: "只能输入整数",
        creditcard: "请输入合法的信用卡号",
        equalTo: "请再次输入相同的值",
        accept: "请输入拥有合法后缀名的字符串",
        maxlength: jQuery.validator.format("请输入一个长度最多是 {0} 的字符串"),
        minlength: jQuery.validator.format("请输入一个长度最少是 {0} 的字符串"),
        rangelength: jQuery.validator.format("请输入一个长度介于 {0} 和 {1} 之间的字符串"),
        range: jQuery.validator.format("请输入一个介于 {0} 和 {1} 之间的值"),
        max: jQuery.validator.format("请输入一个最大为 {0} 的值"),
        min: jQuery.validator.format("请输入一个最小为 {0} 的值")
    });


    

    $("#username").focusout(function() {
        var name = $("#username").val();
        if(name != null && name != ''){
            checkName(name);
        }
    });
//发ajax请求到后台判断用户名是否重复
    function checkName(name){
        $.ajax({
                url : '../../php/registor.php',
                type : "get",
                dataType : 'JSON',
                data : {name:name},
                /*success : function(data) {
                //已经存在该名字提示用户
                console.log(data);
                /!*if(data == 1){
                    $("label").html("该用户名已经存在");
                }else{
                    $("label").html("恭喜您，用户名可以使用");
                }*!/
            }*/
    }).done(function (data) {
        console.log(data);
            if(data == 1){
                $("#exist_repeat").addClass('error').css({
                    'display':'block'
                }).html("该用户名已经存在");
                $('#username').focusin(function () {
                    $('#exist_repeat').css({
                        'display':'none'
                    })
                })
            }


            if(data=''){
                $("#exist_repeat").removeClass('error').addClass('sucess').css({
                    'display':'block'
                }).html("√");
            }
        });
}









    $().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
        $("#signupForm").validate({
            success: function (succ, element) {
                if (element.name == "username") {
                    succ.text("√").addClass("success");
                } else if (element.name == "password") {
                    succ.text("√").addClass("success");
                } else if(element.name == "confirm_password"){
                    succ.text("√").addClass("success");
                }else if(element.name == "email"){
                    succ.text("√").addClass("success");
                }
            },


            rules: {
                username: {
                    required: true,
                    minlength: 3,
                },
                password: {
                    required: true,
                    minlength: 6
                },
                confirm_password: {
                    required: true,
                    minlength: 6,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                },
            },
            messages: {
                username: {
                    required: "请输入用户名",
                    minlength: "用户名最少由3个字组成",
                },
                password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 6 个字母"
                },
                confirm_password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 6 个字母",
                    equalTo: "两次密码输入不一致"
                },
                email: "请输入一个正确的邮箱",
            }

        })



    });


});


