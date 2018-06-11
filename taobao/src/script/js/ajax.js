//slideShow
/*$.ajax({
    type:'get',
    dataType:'json',
    url:'../../php/index.php'
}).done(function (data) {
    console.log(data);
    $.each(data.slideshow,function (index,item) {
        $('.slide_top ul li img').eq(index).attr('src',item.url);
    });
});*/


//live

    $.ajax({
        type:'get',
        dataType:'json',
        url:'../../php/index.php',
    }).done(function (data) {
        $.each(data.live,function (index,item) {
            $('#imageCollection .live').css(
                {'background':'#fff'}
            );
            $('#imageCollection .live ul li').css({
                'width':'82px',
                'margin':'0 56px',
                'height': '82px',
                'border-radius': '50%',
                'border': '1px solid red',
                'background':'#fff',
                'overflow':'hidden'
            });
            $('#imageCollection .live ul img').css({
                    'display': 'block',
                    'width': '66px',
                    'height': '66px',
                    'margin':'8px'
                }
            ).eq(index).attr('src',item.url);
        });
    });


    //goods
        $.ajax({
            type:'get',
            dataType:'json',
            url:'../../php/index.php',
        }).done(function (data) {
            $.each(data.goods,function (index,item) {
                $('.goods_bottom a img').eq(index).attr('src',item.url);
                $('.goods_bottom a h3').eq(index).html(item.title);
                $('.goods_bottom a p').eq(index).html(item.description);
            });
        });



    //shoping
        $.ajax({
            type:'get',
            dataType:'json',
            url:'../../php/index.php',
        }).done(function (data) {
            $.each(data.shoping,function (index,item) {
                $('.shoping_bottom a img').eq(index).attr('src',item.url);
                $('.shoping_bottom a p').eq(index).html(item.title);
            });
        });

        //runOn
        $.ajax({
            type:'get',
            dataType:'json',
            url:'../../php/index.php',
        }).done(function (data) {
            $.each(data.runon,function (index,item) {
                $('.runOn .runOn_top img').eq(index).attr('src',item.url);
                $('.runOn .runOn_bottom h4').eq(index).html(item.title);
                $('.runOn .runOn_bottom p').eq(index).html(item.description);
                $('.runOn .runOn_bottom span').eq(index).html(item.price);
            });
        });



        //store
        $.ajax({
            type:'get',
            dataType:'json',
            url:'../../php/index.php',
        }).done(function (data) {
            $.each(data.store,function (index,item) {
                $('.store .commonBottom h4 .title').eq(index).html(item.title);
                $('.store .commonBottom h4 .subtitle').eq(index).html(item.subtitle);
                $('.store .common_big img').eq(index).attr('src',item.urlbig);
                $('.store .common_small .why_one').eq(index).attr('src',item.urlsmall1);
                $('.store .common_small .why_two').eq(index).attr('src',item.urlsmall2);

                $('.direct .commonBottom h4 .title').eq(index).html(item.title);
                $('.direct .commonBottom h4 .subtitle').eq(index).html(item.subtitle);
                $('.direct .common_big img').eq(index).attr('src',item.urlbig);
                $('.direct .common_small .why_one').eq(index).attr('src',item.urlsmall1);
                $('.direct .common_small .why_two').eq(index).attr('src',item.urlsmall2);
            });
        });

