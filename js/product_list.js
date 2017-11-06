/**
 * Created by web-01 on 2017/10/29.
 */
(()=>{
    var tid=location.search.split("=")[1];
    console.log(tid);
    $.ajax({
        url:"data/get_product_list.php?tid="+tid,
        dataType:"json",
        type:"get"
    }).then(data=>{
       console.log(data);
       var html="";
       var list=data.list;
       for(var i of list){
           html+=`<li class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <div>
                            <img src="${i.img}" alt="" class="">
                        </div>
                        <a href="#">${i.pname}</a><br>
                        <span>${i.price}</span>
                    </li>`;
       }
       $(".list>ul").html(html);
    });
})();