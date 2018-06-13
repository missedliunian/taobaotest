define(['jquery'],function ($) {

    return{
        slideShow:(function () {
            $box=$('.slide_top');
            $cirlis=$('.slide_top ol li');
            $ul=$('.slideShow_girl ul');
            $right=$('.slide_top_right');
            $left=$('.slide_top_left');
            var num=0;
            var timer=null;



            $box.hover(function () {
                $('.slide_top_left,.slide_top_right').show();
                clearInterval(timer);
            },function () {
                $('.slide_top_left,.slide_top_right').hide();
                timer=setInterval(function () {
                    $right.click();
                },3000);
            });

            $cirlis.on('click',function () {
                $(this).attr('id','active').siblings('.slide_top ol li').attr('id','');
                $ul.css({
                    'left':$ul.offset().left
                }).stop(true).animate({
                    'left':-($(this).index()+1)*520
                });
                num=$(this).index();
            });


            $right.on('click',function () {
                num++;
                if(num>=5){
                    $ul.css({
                        'left':-2600
                    }).stop(true).animate({
                        'left':-3120
                    },function () {
                        $cirlis.eq(0).attr('id','active').siblings('.slide_top ol li').attr('id','');
                        $ul.css({
                            'left':-520
                        });
                        num=0;
                    });

                }else{
                    $cirlis.eq(num).attr('id','active').siblings('.slide_top ol li').attr('id','');
                    $ul.css({
                        'left':$ul.offset().left-520
                    }).stop(true).animate({
                        'left':-(num+1)*520
                    });
                }


            });

            $left.on('click',function () {
                num--;
                if(num<=-1){
                    $ul.css({
                        'left':-520
                    }).stop(true).animate({
                        'left':0
                    },function () {
                        $cirlis.eq(4).attr('id','active').siblings('.slide_top ol li').attr('id','');
                        $ul.css({
                            'left':-2600
                        });
                        num=4;
                    });

                }else{
                    $cirlis.eq(num).attr('id','active').siblings('.slide_top ol li').attr('id','');
                    $ul.css({
                        'left':$ul.offset().left-520
                    }).stop(true).animate({
                        'left':-(num+1)*520
                    });
                }


            });

            timer=setInterval(function () {
                $right.click();
            },4000);
        })(),

        tab:(function () {
            $('.tab_bottom a').eq(1).css({'color':'black'});
            $('.tab ul li').eq(0).css({'border-color':'red'});
            $('.tab ul li').eq(0).hover(function () {
                setTimeout(function () {
                    $('.tab ul li').eq(0).css({'border-color':'red'});
                    $('.tab_bottom a').eq(0).html('打造“奇市西湖”，2018淘宝造物节9月定址西湖');
                    $('.tab_bottom a').eq(1).html('天猫618激活传统商圈 阿里公益发布“环境地图');
                },400);
            },function () {
                $('.tab ul li').eq(0).css({'border-color':'#fff'});
            });

            $('.tab ul li').eq(1).hover(function () {
                setTimeout(function () {
                    $('.tab ul li').eq(1).css({'border-color':'red'});
                    $('.tab_bottom a').eq(0).html('新增《淘宝网抽检标准（商用厨房电器）》公示通知');
                    $('.tab_bottom a').eq(1).html('新增《淘宝网大家电行业管理规范》公示通知');
                    $('.tab ul li').eq(0).css({'border-color':'#fff'});
                },400);

            },function () {
                $('.tab ul li').eq(1).css({'border-color':'#fff'});
            });


            $('.tab ul li').eq(2).hover(function () {
                setTimeout(function () {
                    $('.tab ul li').eq(2).css({'border-color':'red'});
                    $('.tab_bottom a').eq(0).html('小二分享大促干货 中差评功能升级');
                    $('.tab_bottom a').eq(1).html('陌生人拼团上线 运营神器年中大促');
                    $('.tab ul li').eq(0).css({'border-color':'#fff'});
                },400);

            },function () {
                $('.tab ul li').eq(2).css({'border-color':'#fff'});
            });


            $('.tab ul li').eq(3).hover(function () {
                setTimeout(function () {
                    $('.tab ul li').eq(3).css({'border-color':'red'});
                    $('.tab_bottom a').eq(0).html('公益“护苗”行动招募 你愿意加入我们吗？');
                    $('.tab_bottom a').eq(1).html('卖家注意：风险通报！ 售假获刑又起诉！');
                    $('.tab ul li').eq(0).css({'border-color':'#fff'});
                },400);

            },function () {
                $('.tab ul li').eq(3).css({'border-color':'#fff'});
            });


            $('.tab ul li').eq(4).hover(function () {
                setTimeout(function () {
                    $('.tab ul li').eq(4).css({'border-color':'red'});
                    $('.tab_bottom a').eq(0).html('为宝贝送儿童节礼物吧 卖家如何设置公益宝贝');
                    $('.tab_bottom a').eq(1).html('项目如何入驻公益宝贝 公益宝贝卖家发票索取');
                    $('.tab ul li').eq(0).css({'border-color':'#fff'});
                },400);

            },function () {
                $('.tab ul li').eq(4).css({'border-color':'#fff'});
            });


        })(),

        searchBox:(function () {
            $('.fixed_right a').hover(function () {
                $(this).css({
                    'background':'#ff6508',
                    'color':'#fff',
                    'font-weight':'bolder'
                })
            },function () {
                $(this).css({
                    'background':'#fff',
                    'color':'red'
                })
            });
            $('.fixed_right_four').on('click',function () {
                $("html,body").animate({scrollTop:0}, 500);
            });

            $('.fixed_right_one').on('click',function () {
                $("html,body").animate({scrollTop:810}, 500);
            });
            $('.fixed_right_two').on('click',function () {
                $("html,body").animate({scrollTop:1460}, 500);
            });
            $('.fixed_right_three').on('click',function () {
                $("html,body").animate({scrollTop:2410}, 500);
            });



            $(window).scroll(function () {
                if($(this).scrollTop()>600){
                    $('.fixed_right').css({
                        'display':'block'
                    })
                }else{
                    $('.fixed_right').css({
                        'display':'none'
                    })
                }
                if($(this).scrollTop()>800 && $(this).scrollTop()<1450){
                    $('.fixed_right_one').css({
                        'background':'#ff6508',
                        'color':'#fff',
                        'font-weight':'bolder'
                    })
                }else{
                    $('.fixed_right_one').css({
                        'background':'#fff',
                        'color':'red',
                        'font-weight':'normal'
                    })
                }


                if($(this).scrollTop()>1450 && $(this).scrollTop()<2400){
                    $('.fixed_right_two').css({
                        'background':'#ff6508',
                        'color':'#fff',
                        'font-weight':'bolder'
                    })
                }else{
                    $('.fixed_right_two').css({
                        'background':'#fff',
                        'color':'red',
                        'font-weight':'normal'
                    })
                }

                if($(this).scrollTop()>=2400){
                    $('.fixed_right_three').css({
                        'background':'#ff6508',
                        'color':'#fff',
                        'font-weight':'bolder'
                    })
                }else{
                    $('.fixed_right_three').css({
                        'background':'#fff',
                        'color':'red',
                        'font-weight':'normal'
                    })
                }

                if($(this).scrollTop()>=150){
                    $('.searchBox').css({
                        'position':'fixed',
                        'left':290,
                        'top':0,
                        'background':'#fff',
                        'z-index':9
                    })
                }else{
                    $('.searchBox').css({
                        'position':'absolute',
                        'left':0,
                        'top':0
                    })
                }
            });
        })(),
    };

});
