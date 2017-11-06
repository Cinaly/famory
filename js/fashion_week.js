/**
 * Created by web-01 on 2017/11/2.
 */
(()=>{

    $.ajax({
        url:"data/fashion_week.php",
        dataType:"json",
        type:"get"
    }).then(data=>{
        console.log(data);
        var html="";
        var list=data.list;
        for(var i of list){
            html+=`<li class="col-lg-4 col-md-6 col-xs-12 col-sm-12">
                    <img src="${i.img}" alt="" class="img-responsive">
                    <p class="title">${i.title}</p>
                    <p class="content">${i.content}</p>
                    <div class="bottom">
                        <span class="time"><i></i> ${i.create_time}</span>
                        <span class="read">浏览：${i.read_num}</span>
                    </div>
                </li>`;
        }
        $("#list").html(html);
    });
})();