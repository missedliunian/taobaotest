define(['jquery'],function () {


        $.ajax({
            url:'../../php/details.php',
            type:'get',
            dataType:'JSON'
        }).done(function (data) {
            var arr=[];
            $.each(data,function (index,item) {
                arr[index]=item.urlArr.split(',');
            });
            $.each(arr[0],function (index,item) {
                $('.page_left ul img').eq(index).attr('src',item);
            });
            $('.smallPic img').attr('src',arr[0][0]);
            $('.scale img').attr('src',arr[0][0]);
        });




        $smallPic=$('.smallPic');
        $move=$('.smallPic div');
        $scalePic=$('.scale img');


        $smallPic.hover(function () {
            $('.scale').show();
            $move.show();
        },function () {
            $('.scale').hide();
            $move.hide();
        });


        $('.page_left ul img').hover(function () {
            $('.smallPic img').attr('src',$(this).attr('src'));
            $('.scale img').attr('src',$(this).attr('src'));
            $(this).parent('li').css({'border-color':'red'});
        },function () {
            $(this).parent('li').css({'border-color':'#fff'});
        });


        $(document).on('mousemove',function (ev) {
            var $x=ev.pageX-$('.smallPic').offset().left;
            var $y=ev.pageY-$('.smallPic').offset().top;
            if($x<=100){
                $x=100;
            }
            if($x>=300){
                $x=300;
            }
            if($y<=100){
                $y=100;
            }
            if($y>=300){
                $y=300;
            }

            $move.css({
                'left':$x-100,
                'top':$y-100
            });

            var scale=2;
            $scalePic.css({
                'left':-2*($x-100),
                'top':-2*($y-100)
            });

        });


















});