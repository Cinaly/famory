/**
 * Created by web-01 on 2017/10/29.
 */
(()=>{
    $.ajax({
        url:"menu.html",
        dataType:"text"
    }).then(html=>{
        $("#menu").html(html);
    });
})();

(()=>{
    $.ajax({
        url:"data/menu.php",
        type:"get",
        dataType:"json"
    }).then(data=>{
        var length=data.length;
        var html="";
        for(var i of data){

            var list=i.list;
            if(list.length==1&&list[0].tname==null){
                html+=`<li data-type="1">
            <a href="product_list.html?tid=${list[0].tid}">${i.cname}</a>`;
            }else{
                html+=`<li data-type="1">
            <span>${i.cname}</span>`;
                html+=`<ul class="hidden">`;
                for(var j of list){
                    html+=`<li><a href="product_list.html?tid=${j.tid}">${j.tname}</a></li>`;
                }
                html+=`</ul>`;
            }
            html+=`</li>`;
        }
        html+=`<li>
            <a href="fashion_week.html">时装周</a>
        </li>
        <li>
            <a href="shop.html">实体店</a>
        </li>
        <li>
            <a href="javascript:;">网上商城</a>
        </li>
        <li>
            <a href="ppjs.html">品牌介绍</a>
        </li>
        <li>
            <span>关于名瑞</span>
            <ul class="hidden">
                <li><a href="#">集团介绍</a></li>
                <li><a href="#">生产线</a></li>
                <li><a href="#">明瑞蕾丝</a></li>
                <li><a href="#">中国刺绣</a></li>
                <li><a href="#">精湛潮绣</a></li>
                <li><a href="#">龙凤褂裙</a></li>
                <li><a href="#">联系方式</a></li>
                <li><a href="#">质量证书</a></li>
                <li><a href="#">郑重声明</a></li>
                <li><a href="#">集团公告</a></li>            
            </ul>
        </li>`;
        $(".menu-family>.list").html(html);
        var $li=$(".menu-family>.list>li");
         $li.on("click","span",function(e){
             var $span=$(e.target);
             $span.parent().siblings().attr("class","");
             $span.parent().attr("class","active");
             console.log($span);
             $span.parent().siblings().children("ul").attr("class","hidden");
             if($span.next().is("ul")){
                 $span.next().toggleClass("hidden");
             }

         });


    });
})();

