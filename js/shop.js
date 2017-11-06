/**
 * Created by web-01 on 2017/11/3.
 */
(()=>{
    $.ajax({
        url:"data/shop.php",
        type:"get",
        dataType:"json"
    }).then(data=>{
        console.log(data);
        var html="";
        for(var i of data){
            html+=`<li>
                        <div>${i.sname}</div>
                        <div class="row hidden">
                            <div class="col-sm-4 col-xs-12">
                                <img src="${i.img}" alt="" class="img-responsive">
                            </div>
                            <div class=" col-sm-8 col-xs-12">
                                <p class="text-bold">${i.sname}</p>
                                <p>店铺地址：${i.address}</p>
                                <p>咨询电话：${i.tel}</p>
                                <p>客服QQ：${i.qq}</p>
                                <p>营业时间：${i.open_time}</p>
                            </div>
                        </div>
                    </li>`;
        }
        $("#main .list").html(html);
    });
})();