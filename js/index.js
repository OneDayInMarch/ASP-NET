
 
           //广告轮播图的实现
           var _index = 0;//初始化序列号
$("#Adv .ImgList").eq(0).show().siblings("div").hide();//最开始显示第一张
$("ul.button li").hover(function () {/*鼠标在上面*/
    clearInterval(timePlay);
    _index = $(this).index()///获取当前li序列号
    alert(_index);//弹窗
    $(this).addClass("hover").siblings().removeClass("hover");
    //显示按钮
    $("#Adv .ImgList").eq(_index).fadeIn().siblings("div").fadeOut();
    //fadeIn淡入 fadeOut 淡出
}, function () { /*鼠标移开*/autoPlay(); });
function autoPlay() {//构建自动轮播函数
    //设置定时器
    timePlay=setInterval(function () {
        _index++;
        if (_index < 4) {
            $("ul.button li").eq(_index).addClass("hover").siblings().removeClass("hover");
            $("#Adv .ImgList").eq(_index).fadeIn().siblings("div").fadeOut();
            //alert(_index);
        } else { _index = -1;/*设置序列号为-1，调到播放第一张图片*/}
    }, 1000);
                         
                
};
autoPlay();//调用和执行；
//路线推荐选项卡效果
//鼠标滑上去的效果
$("ul.select_but li").mouseover(function () {
    $(this).addClass("hover").siblings().removeClass("hover");//改变按钮的样式；
    // $(this).index();
    $(".select_con .select_content").eq($(this).index()).show().siblings().hide();//改变内容区
});

       