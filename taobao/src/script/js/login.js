define(['jquery'],function () {

    $('.login_btn').on('click',function () {
        $.ajax({
            url : '../../php/login.php',
            type : "get",
            dataType : 'JSON',
            data:{
                user: $('.login_user').val(),
                pass: $('.login_pass').val()
            }
        }).done(function (data) {
            if(data==1){
                alert('登录成功！');
                location.href='index.html';
            }else{
                alert('用户名或密码错误！');
            }
        });
    });

});