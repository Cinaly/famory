/**
 * Created by web-01 on 2017/10/29.
 */
(()=>{
    $.ajax({
        url:"header.html",
        dataType:"text"
    }).then(html=>{
        $("#header").html(html);
    });
})();

(()=>{
    $.ajax({
        url:"footer.html",
        dataType:"text"
    }).then(html=>{
        $("#footer").html(html);
    });
})();