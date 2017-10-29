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