define(['jquery'],function () {
    $('#search_data').on('input',function () {
        $('#search .searchBox ul').show();
        var $value=$(this).val();
        $.ajax({
            url:`https://suggest.taobao.com/sug?code=utf-8&q=${$value}&_ksTS=1528898072575_661&callback=jsonp662`,
            type:'get',
            dataType:'JSONP'
        }).done(function (data) {
            $.each(data.result,function (index,item) {
                $('#search .searchBox ul li').eq(index).html(item[0]);
            })
        });
    });



    $('#search_data').on('blur',function () {
        $('#search .searchBox ul').hide();
    });

});