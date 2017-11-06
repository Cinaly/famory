set names utf8;
drop database if exists famory;
create database famory charset=utf8;
use famory;

#类别表
create table category(
    cid int primary key,
    cname varchar(16)
);
insert into category values
(1,'婚纱'),(2,'礼服'),(3,'龙凤褂'),(4,'小礼服'),(5,'亲子装'),
(6,'小公主裙'),(7,'中国刺绣');

#子类表
create table type(
    tid int primary key auto_increment,
    tname varchar(16),
    cid int
);
insert into type values
(null,"经典款",1),(null,"时尚款",1),
(null,"伴娘服",2),(null,"敬酒服",2),
(null,"旗舰版",3),(null,"钻石版",3),(null,"98K金版",3),
(null,null,4),
(null,null,5),
(null,null,6),
(null,"花鸟虫草",7),(null,"人物",7),(null,"屏风",7),(null,"佛像",7);

#产品表
create table products(
    pid int primary key auto_increment,
    pname varchar(32),
    price varchar(32),
    img varchar(256),
    tid int
);
insert into products values
(null,"风情复古唯美极致卡肩鱼尾婚纱 GH70018","¥ 3399","img/products/classical/1.jpg",1),
(null,"薄纱包肩蕾丝鱼尾欧根纱大拖尾婚纱 GH70007","¥ 6999","img/products/classical/2.jpg",1),
(null,"一字肩宫廷风金丝刺绣高端奢华拖尾婚纱 GH70003","¥ 4699","img/products/classical/3.jpg",1),
(null,"森系V领手工蝴蝶花朵点缀蕾丝婚纱 GH70002","¥ 3899","img/products/classical/4.jpg",1),
(null,"简约静谧女神薄纱蕾丝刺绣鱼尾婚纱 BYW2017","¥ 2999","img/products/classical/5.jpg",1),
(null,"奢华宫廷梦幻V领吊带蕾丝超大摆婚纱 BYW2006","¥ 9999","img/products/classical/6.jpg",1),
(null,"唯美系轻奢清透一字肩蕾丝长拖尾婚纱 BYW2002","¥ 2999","img/products/classical/7.jpg",1),

(null,"唯美人鱼透视露背蕾丝婚纱 GH70023","¥ 3999","img/products/fashion/1.jpg",2),
(null,"简约定制抹胸细褶蕾丝花长拖尾婚纱 GH70020","¥ 3899","img/products/fashion/2.jpg",2),
(null,"森系童话公主双肩坠珠高腰蕾丝婚纱 GH70019","¥ 4899","img/products/fashion/3.jpg",2),
(null,"清新简约单肩吊带细褶蕾丝小拖尾婚纱 GH70016","¥ 3899","img/products/fashion/4.jpg",2),
(null,"高雅女神范圣洁花儿绽放抹胸婚纱 GH70015","¥ 7999","img/products/fashion/5.jpg",2),
(null,"典雅公主气质桃花朵朵抹胸蓬蓬婚纱 GH70014","¥ 4899","img/products/fashion/6.jpg",2),
(null,"甜美公主花朵蓬蓬轻纱蕾丝抹胸婚 GH70010","¥ 2699","img/products/fashion/7.jpg",2),

(null,"法式蕾丝气质公主伴娘姐妹团短礼服GW70047","¥ 899","img/products/banniang/1.jpg",3),
(null,"法式甜美V领公主伴娘姐妹团短礼服GW70046","¥ 899","img/products/banniang/2.jpg",3),
(null,"仙女花朵单肩细纱飘逸伴娘姐妹团短礼服GW70044","¥ 699","img/products/banniang/3.jpg",3),
(null,"浪漫仙气花朵双肩伴娘姐妹团短礼服GW70043","¥ 699","img/products/banniang/4.jpg",3),
(null,"一字肩轻纱俏丽伴娘姐妹团短礼服GW70042","¥ 699","img/products/banniang/5.jpg",3),
(null,"气质轻奢公主仙逸雪纺伴娘短礼服GW70038","¥ 799","img/products/banniang/6.jpg",3),
(null,"梦幻精致蕾丝雪纺蝴蝶飘带伴娘长礼服GW70037","¥ 899","img/products/banniang/7.jpg",3),
(null,"逆龄甜美细纱裹肩细纱伴娘短礼服GW70035","¥ 799","img/products/banniang/8.jpg",3),
(null,"朦胧仙气细纱双肩伴娘短礼服GW70033","¥ 799","img/products/banniang/9.jpg",3),
(null,"粉嫩恬静透视蕾丝雪纺伴娘短礼服GW70032","¥ 799","img/products/banniang/10.jpg",3),
(null,"俏丽心领波浪裙巾飘逸雪纺伴娘短礼服GW70031","¥ 699","img/products/banniang/11.jpg",3),
(null,"梦幻轻盈双肩V领雪纺伴娘短礼服GW70029","¥ 599","img/products/banniang/12.jpg",3),
(null,"唯美雅致一字大V领雪纺伴娘长礼服GW70015","¥ 999","img/products/banniang/13.jpg",3),
(null,"浪漫心形抹胸雪纺伴娘长礼服GW70014","¥ 999","img/products/banniang/14.jpg",3),
(null,"清新甜美单肩波浪花雪纺伴娘长礼服GW70011","¥ 999","img/products/banniang/15.jpg",3),

(null,"优雅v领蕾丝鱼尾新娘红色礼服敬酒服GW70045","¥ 2399","img/products/jingjiu/1.jpg",4),
(null,"古典气质繁花敬酒礼服 GW70010","¥ 1899","img/products/jingjiu/2.jpg",4),
(null,"巴洛克梦幻雪纺敬酒礼服 GW70009","¥ 2299","img/products/jingjiu/3.jpg",4),
(null,"气质蕾丝刺绣敬酒礼服 GW70007","¥ 1999","img/products/jingjiu/4.jpg",4),
(null,"唯美刺绣蕾丝敬酒礼服 GW70006","¥ 2299","img/products/jingjiu/5.jpg",4),
(null,"高腰褶荷叶边敬酒礼服 GW70005","¥ 1999","img/products/jingjiu/6.jpg",4),
(null,"性感蕾丝刺绣敬酒礼服 GW70004","¥ 1699","img/products/jingjiu/7.jpg",4),
(null,"高雅风情华贵敬酒礼服 GW70002","¥ 2999","img/products/jingjiu/8.jpg",4),
(null,"欧式手工钉珠敬酒礼服 GW70001","¥ 2999","img/products/jingjiu/9.jpg",4),

(null,"豪华褂皇中式手工金银线刺绣齐裾龙凤褂裙新娘结婚红色礼服gWB071","¥ 58000","img/products/qijian/1.jpg",5),
(null,"华贵中式手工金银线刺绣团花斜襟龙凤褂裙新娘结婚红色礼服gWB075","¥ 28000","img/products/qijian/2.jpg",5),
(null,"豪华中式手工金银线刺绣波浪裾龙凤褂裙新娘结婚红色礼服gWB0107","¥ 58000","img/products/qijian/3.jpg",5),
(null,"纯手工金线刺绣龙凤富贵黑褂红裙卜心褂裙gWB055","¥ 28800","img/products/qijian/4.jpg",5),
(null,"纯手工美轮美奂复古平绣金银绣收腰中式新娘褂裙gW053","¥ 18800","img/products/qijian/5.jpg",5),
(null,"纯手工刺绣龙凤呈祥彩线卜心新娘中式绣褂裙gWB053","¥ 28800","img/products/qijian/6.jpg",5),
(null,"纯手工刺绣龙凤呈祥彩线卜心斜襟中式绣褂裙gFB065","¥ 28800","img/products/qijian/7.jpg",5),
(null,"纯手工刺绣龙凤呈祥金光闪耀斜襟中式绣褂裙gFB064","¥ 38800","img/products/qijian/8.jpg",5),
(null,"纯手工刺绣龙凤呈祥金线卜心鱼尾绣褂裙gFB006","¥ 38800","img/products/qijian/9.jpg",5),
(null,"纯手工金线刺绣龙凤富贵卜心中式绣褂裙gWB054","¥ 38800","img/products/qijian/10.jpg",5),
(null,"纯手工奢华端庄中式疏丝立体金银绣龙凤褂裙gW056","¥ 58800","img/products/qijian/11.jpg",5),
(null,"纯手工富丽堂皇金丝银线满绣密云中式龙凤褂裙gW057","¥ 88800","img/products/qijian/12.jpg",5),

(null,"纯手工刺绣龙凤呈祥彩线钻石版卜心新娘中式绣褂裙FgWB001","¥ 38800","img/products/diamond/1.jpg",6),
(null,"纯手工奢华端庄钻石版疏丝绣龙凤褂裙FgW056","¥ 98000","img/products/diamond/2.jpg",6),
(null,"纯手工金碧辉煌钻石版密云绣龙凤褂裙FgW057-33","¥ 138800","img/products/diamond/3.jpg",6),
(null,"名瑞纯手工奢华端庄疏丝绣中式褂裙98K金限量版98KW034","¥ 328800","img/products/98k/1.jpg",7),
(null,"纯手工富丽堂皇密云中式龙凤褂裙98K金限量版98KW033","¥ 398800","img/products/98k/2.jpg",7),

(null,"雪纺蕾丝拼接长裙 BYL0116","¥ 539","img/products/xiaolifu/1.jpg",8),
(null,"重工钩花镂空水溶蕾丝连衣裙BYL0226","¥ 559","img/products/xiaolifu/2.jpg",8),
(null,"知性圆领钉珠无袖连衣裙GW70026","¥ 399","img/products/xiaolifu/3.jpg",8),
(null,"镂空圆领吊带两件套A字裙BYL0229","¥ 569","img/products/xiaolifu/4.jpg",8),
(null,"印花气质背心连衣裙BYL0227","¥ 499","img/products/xiaolifu/5.jpg",8),
(null,"窈窕淑女拼接小礼服BYL0027","¥ 429","img/products/xiaolifu/6.jpg",8),
(null,"别致蕾丝两件套裙GW70027","¥ 499","img/products/xiaolifu/7.jpg",8),
(null,"通勤透视蕾丝裙BYL0056","¥ 429","img/products/xiaolifu/8.jpg",8),
(null,"墨蓝弹力针织裙BYL0041","¥ 399","img/products/xiaolifu/9.jpg",8),
(null,"复古赫本风小黑裙 BYL0030","¥ 499","img/products/xiaolifu/10.jpg",8),
(null,"吊带蕾丝黑色长裙 BYL0025","¥ 449","img/products/xiaolifu/11.jpg",8),

(null,"名媛通花蕾丝喇叭长袖连衣裙亲子装 BYL0218+BYT0074","¥ 469（大人款）/￥349（儿童款）","img/products/qinzizhuang/1.jpg",9),
(null,"名媛通花蕾丝喇叭长袖小公主裙 BYT0074","¥ 349","img/products/qinzizhuang/2.jpg",9),
(null,"名媛通花蕾丝喇叭长袖连衣裙 BYL0218","¥ 469","img/products/qinzizhuang/3.jpg",9),
(null,"无袖气质羽毛花边连衣裙BYL0217+BYT0073","¥ 369（大人款）/￥299（儿童款）","img/products/qinzizhuang/4.jpg",9),
(null,"无袖气质羽毛花边公主裙BYT0073","¥ 299","img/products/qinzizhuang/5.jpg",9),
(null,"无袖气质羽毛花边连衣裙BYL0217","¥ 369","img/products/qinzizhuang/6.jpg",9),
(null,"纯手工刺绣龙凤呈祥彩线卜心斜襟中式绣褂裙gFB065","¥ 469","img/products/qinzizhuang/7.jpg",9),
(null,"气质波浪边亮片蕾丝公主裙BYT0072","¥ 499","img/products/qinzizhuang/8.jpg",9),
(null,"不对称露肩亮片钩花蕾丝连衣裙BYL0216","¥ 499（大人款）/￥399（儿童款）","img/products/qinzizhuang/9.jpg",9),
(null,"不对称露肩亮片钩花蕾丝连衣裙亲子装BYL0216+BYT0072","¥ 469","img/products/qinzizhuang/10.jpg",9),
(null,"小香风镂空短袖撞色拼接蕾丝公主裙BYT0071","¥ 549","img/products/qinzizhuang/11.jpg",9),
(null,"小香风镂空短袖撞色拼接蕾丝连衣裙BYL0215","¥ 549（大人款）/￥469（儿童款）","img/products/qinzizhuang/12.jpg",9),
(null,"小香风镂空短袖撞色拼接蕾丝连衣裙亲子装BYL0215+BYT0071","¥ 469","img/products/qinzizhuang/13.jpg",9),
(null,"珍珠通花蕾丝优雅小公主裙BYT0070","¥ 599","img/products/qinzizhuang/14.jpg",9),
(null,"名媛吊带通花蕾丝连衣裙BYL0214","¥ 599（大人款）/￥469（儿童款）","img/products/qinzizhuang/15.jpg",9),
(null,"名媛吊带通花蕾丝连衣裙亲子装BYL0214+BYT0070","¥ 569（大人款）/￥399（儿童款）","img/products/qinzizhuang/16.jpg",9),
(null,"欧美显瘦黑色前拉链蕾丝连衣裙亲子裙 BYL0213+BYT0069","¥ 399","img/products/qinzizhuang/17.jpg",9),
(null,"圆领雪纺蕾丝拼接A字公主裙BYT0069","¥ 569","img/products/qinzizhuang/18.jpg",9),
(null,"欧美显瘦黑色前拉链蕾丝连衣裙BYL0213","¥ 499","img/products/qinzizhuang/19.jpg",9),
(null,"无袖气质圆领镂空束腰花瓣小公主裙BYT0067","¥ 599","img/products/qinzizhuang/20.jpg",9),
(null,"无袖气质圆领镂空束腰花瓣连衣裙BYL0211","¥ 599（大人款）/￥499（儿童款）","img/products/qinzizhuang/21.jpg",9),
(null,"无袖气质圆领镂空束腰花瓣连衣裙亲子装BYL0211+BYT0067","¥ 199","img/products/qinzizhuang/22.jpg",9),
(null,"通花蕾丝白色半身女童百褶裙BYD0003-1","¥ 259（大人款）/￥199（儿童款）","img/products/qinzizhuang/23.jpg",9),
(null,"通花蕾丝白色半身百褶裙亲子装BYD0003+BYD0003-1","¥ 259","img/products/qinzizhuang/24.jpg",9),
(null,"通花蕾丝白色半身百褶裙BYD0003","¥ 269","img/products/qinzizhuang/25.jpg",9),
(null,"优雅百搭黑色蕾丝镂空伞裙BYD0002","¥ 229","img/products/qinzizhuang/26.jpg",9),
(null,"优雅百搭黑色蕾丝镂空女童伞裙BYD0002-1","¥ 269（大人款）/￥229（儿童款）","img/products/qinzizhuang/27.jpg",9),
(null,"优雅百搭黑色蕾丝镂空伞裙亲子裙BYD0002+BYD0002-1","¥ 199","img/products/qinzizhuang/28.jpg",9),
(null,"层层花纹蕾丝包臀女童半身裙BYD0001-1","¥ 229（大人款）/￥199（儿童款）","img/products/qinzizhuang/29.jpg",9),
(null,"层层花纹蕾丝包臀半身裙亲子裙BYD0001+BYD0001-1","¥ 229","img/products/qinzizhuang/30.jpg",9),
(null,"层层花纹蕾丝包臀半身裙BYD0001","¥ 549(大人款)/￥339(儿童款)","img/products/qinzizhuang/31.jpg",9),
(null,"简约浅灰亲子裙 BYL0105+BYT0055","¥ 2699","img/products/qinzizhuang/32.jpg",9),
(null,"简约浅灰亲子裙 BYT0055","¥ 339","img/products/qinzizhuang/33.jpg",9),
(null,"简约浅灰亲子裙 BYL0105","¥ 549","img/products/qinzizhuang/34.jpg",9),
(null,"小香风条纹亲子裙 BYL0100+BYT0050","¥ 399(大人款)/￥339(儿童款)","img/products/qinzizhuang/35.jpg",9),
(null,"小香风条纹亲子裙 BYT0050","¥ 339","img/products/qinzizhuang/36.jpg",9),
(null,"小香风条纹亲子裙 BYL0100","¥ 399","img/products/qinzizhuang/37.jpg",9),

(null,"修身气质蕾丝A字连衣小公主裙 BYT0068","¥ 439","img/products/xiaogongzhu/1.jpg",10),
(null,"佳偶气质雪纺娃娃装小公主裙 BYT0054","¥ 339","img/products/xiaogongzhu/2.jpg",10),
(null,"木兰花蕾丝缎蓬裙 BYT0019","¥ 699","img/products/xiaogongzhu/3.jpg",10),
(null,"蔷薇连衣蕾丝蓬裙 BYT0018","¥ 699","img/products/xiaogongzhu/4.jpg",10),
(null,"炫彩花环柔纱裙 BYT0017","¥ 639","img/products/xiaogongzhu/5.jpg",10),
(null,"梦幻花蛋糕公主裙 BYT0015","¥ 639","img/products/xiaogongzhu/6.jpg",10),
(null,"浪漫粉嫩花花蓬裙 BYT0014","¥ 639","img/products/xiaogongzhu/7.jpg",10),
(null,"小清新缎纱蝴蝶裙 BYT0013","¥ 499","img/products/xiaogongzhu/8.jpg",10),
(null,"可爱欧根纱小罩裙 BYT0012","¥ 639","img/products/xiaogongzhu/9.jpg",10),
(null,"甜心公主蛋糕蓬裙 BYT0011","¥ 639","img/products/xiaogongzhu/10.jpg",10),
(null,"闪闪可爱蛋糕蓬裙 BYT0010","¥ 569","img/products/xiaogongzhu/11.jpg",10),
(null,"花瓣飘逸小蓬裙 BYT0009","¥ 639","img/products/xiaogongzhu/12.jpg",10),
(null,"花瓣小拖尾幻变裙 BYT0008","¥ 699","img/products/xiaogongzhu/13.jpg",10),
(null,"柔缎泡泡灯笼裙 BYT0007","¥ 499","img/products/xiaogongzhu/14.jpg",10),
(null,"柔缎泡泡灯笼裙 BYT0006","¥ 639","img/products/xiaogongzhu/15.jpg",10),
(null,"柔缎水波纹公主裙 BYT0005","¥ 569","img/products/xiaogongzhu/16.jpg",10),
(null,"蕾丝花柔纱小蓬裙 BYT0004","¥ 639","img/products/xiaogongzhu/17.jpg",10),
(null,"清新立体花蓬蓬裙 BYT0003","¥ 569","img/products/xiaogongzhu/18.jpg",10),
(null,"灵动小淑女圆蓬裙 BYT002","¥ 499","img/products/xiaogongzhu/19.jpg",10),
(null,"萌感蛋糕蓬蓬裙 BYT0001","¥ 569","img/products/xiaogongzhu/20.jpg",10),

(null,"龙团","¥ 12000","img/products/hncc/1.jpg",11),
(null,"锦鸡","¥ 168800","img/products/hncc/2.jpg",11),
(null,"岁朝清供","¥ 88800","img/products/hncc/3.jpg",11),
(null,"颗颗珠玑","¥ 188800","img/products/hncc/4.jpg",11),
(null,"陈之佛绿竹群雀","¥ 188800","img/products/hncc/5.jpg",11),
(null,"杏花图","¥ 2280","img/products/hncc/6.jpg",11),
(null,"眉梅绶","¥ 2280","img/products/hncc/7.jpg",11),
(null,"连余连有","¥ 12000","img/products/hncc/8.jpg",11),
(null,"荷香游鱼乐","¥ 2280","img/products/hncc/9.jpg",11),
(null,"寒雏图","¥ 2280","img/products/hncc/10.jpg",11),
(null,"牡丹","¥ 298800","img/products/hncc/11.jpg",11),
(null,"玉堂富贵","¥ 2280","img/products/hncc/12.jpg",11),
(null,"岁朝清供","¥ 88800","img/products/hncc/13.jpg",11),
(null,"香永泽长","¥ 188800","img/products/hncc/14.jpg",11),
(null,"仙萼长春黄刺鱼儿牡丹图","¥ 2280","img/products/hncc/15.jpg",11),
(null,"梨花一枝春带雨","¥ 2280","img/products/hncc/16.jpg",11),
(null,"仙蕚长春桃花图","¥ 2280","img/products/hncc/17.jpg",11),
(null,"任颐花鸟图","¥ 2280","img/products/hncc/18.jpg",11),
(null,"任颐花鸟图","¥ 2280","img/products/hncc/19.jpg",11),
(null,"清荷图","¥ 2280","img/products/hncc/20.jpg",11),
(null,"郎世宁花草图","¥ 2280","img/products/hncc/21.jpg",11),
(null,"花卉昆虫图","¥ 2280","img/products/hncc/22.jpg",11),
(null,"兰花","¥ 2280","img/products/hncc/23.jpg",11),
(null,"仙萼长春图花鸟2","¥ 2280","img/products/hncc/24.jpg",11),
(null,"谷启宇花鸟图","¥ 288800","img/products/hncc/25.jpg",11),
(null,"仙萼长春图花鸟1","¥ 2280","img/products/hncc/26.jpg",11),
(null,"仙萼长春图花石图","¥ 2280","img/products/hncc/27.jpg",11),
(null,"郎世宁牡丹","¥ 2280","img/products/hncc/28.jpg",11),
(null,"蝴蝶荷花","¥ 2280","img/products/hncc/29.jpg",11),
(null,"仙萼长春图百合","¥ 2280","img/products/hncc/30.jpg",11),
(null,"樱花双燕","¥ 336600","img/products/hncc/31.jpg",11),
(null,"余樨百合","¥ 2280","img/products/hncc/32.jpg",11),
(null,"石榴","¥ 2280","img/products/hncc/33.jpg",11),
(null,"藕","¥ 2280","img/products/hncc/34.jpg",11),
(null,"牵牛花鸟图","¥ 2280","img/products/hncc/35.jpg",11),
(null,"茄花巨嘴鸟","¥ 2280","img/products/hncc/36.jpg",11),
(null,"牡丹","¥ 2280","img/products/hncc/37.jpg",11),

(null,"女童","¥ 238800","img/products/renwu/1.jpg",12),
(null,"白度母","¥ 298800","img/products/renwu/2.jpg",12),
(null,"小浴女","¥ 128800","img/products/renwu/3.jpg",12),
(null,"小姐妹","¥ 128800","img/products/renwu/4.jpg",12),
(null,"秋窗读书图","¥ 188800","img/products/renwu/5.jpg",12),
(null,"花鸟条屏","¥ 688800","img/products/pingfeng/1.jpg",13),
(null,"唐卡观音","¥ 298800","img/products/foxiang/1.jpg",14),
(null,"宝相观音图","¥ 296600","img/products/foxiang/2.jpg",14),
(null,"观音","¥ 288800","img/products/foxiang/3.jpg",14);

#产品详情表
create table product_detail(
    pdid int primary key auto_increment,
    img varchar(2048),
    pid int
);
insert into product_detail values
(null,"img/products/details/1.jpg,img/products/details/2.jpg,img/products/details/3.jpg,img/products/details/4.jpg,img/products/details/5.jpg,img/products/details/6.jpg,img/products/details/7.jpg,img/products/details/8.jpg,img/products/details/9.jpg,img/products/details/10.jpg,img/products/details/11.jpg,img/products/details/12.jpg,img/products/details/13.jpg,img/products/details/14.jpg,img/products/details/15.jpg",1);

#时装周
create table fashion_week(
    fid int primary key auto_increment,
    img varchar(128),
    title varchar(64),
    content varchar(256),
    read_num int default 0,
    create_time varchar(10)
);
insert into fashion_week values
(null,"img/shizhuangzhou/1.jpg","2018名瑞婚纱礼服龙凤褂裙发布会","2017年6月10日晚，“锦绣中华·2017中国非物质文化遗产服饰秀”系列活动之“韵·中国嫁衣婚纱礼服秀”亮相恭王府。",0,"2017-06-13"),
(null,"img/shizhuangzhou/2.jpg","2017名瑞婚纱龙凤褂裙发布会（北京&潮州）","2016年10月26日，21：00，梅赛德斯-奔驰中国国际时装周，名瑞婚纱礼服发布会，在“北京华贸中心”正式发布。",0,"2016-10-26"),
(null,"img/shizhuangzhou/3.jpg","2016婚纱礼服发布会","2015年10月28日下午，“ALLAN CAI”名瑞婚纱晚礼服2016新品发布会在北京服装学院举行全球首秀 ",0,"2015-10-28"),
(null,"img/shizhuangzhou/4.jpg","2015婚纱礼服发布会","2014年10月26日18:00,“名瑞”2015春夏婚纱礼服新品发布会在北京751D.PARK中央大厅隆重举行。 ",0,"2014-10-26"),
(null,"img/shizhuangzhou/5.jpg","2014婚纱礼服发布会","2013年8月17日晚，广东时装周之FAMORY名瑞2014趋势•蔡中涵发布会在广州服装展贸中心5号馆会场成功举办",0,"2013-08-18"),
(null,"img/shizhuangzhou/6.jpg","2013秋冬发布会","2013年3月30日晚 北京751 中央大厅",0,"2013-03-31");

#实体店
create table shop(
    sid int primary key auto_increment,
    sname varchar(64),
    address varchar(128),
    tel varchar(128),
    qq varchar(16),
    img varchar(128),
    open_time varchar(64)
);
insert into shop values
(null,"FAMORY名瑞婚纱旗舰店（北京王府井店）","北京市东城区王府井大街301号新燕莎金街购物广场二层M211-M212号商铺","010-85118087,18310113319","1438633843","img/shop/std1.jpg","周一至周日10:00-22:00"),
(null,"FAMORY名瑞婚纱旗舰店（北京金源店）","北京市海淀区远大路1号四层4054","010-88843351,18310113319","","img/shop/std2.jpg","周一至周日10:00-22:00"),
(null,"悦明宴会事务所——FAMORY名瑞婚纱礼服店（哈尔滨总店）","黑龙江省哈尔滨市道里区友谊西路2968号悦明宴会事务所","0451-82944777","","img/shop/std3.jpg",""),
(null,"FAMORY名瑞婚纱旗舰店（潮州总店）","潮州市湘桥区城新路段名瑞楼5楼(市公安局斜对面) ","0768-2298787","1807446606","img/shop/std4.jpg","周一至周五13:00-21:00,周六至周日10::00-21:00"),
(null,"云帆苏绣——FAMORY名瑞婚纱礼服店（苏州总店Coming Soon）","江苏省苏州市高新区科技城锦峰国际广场 VIP东楼 6 楼","","","img/shop/std5.jpg",""),
(null,"FAMORY名瑞婚纱礼服店（莆田总店Coming Soon）","福建省莆田东圳路溢华别墅（市邮政大楼旁）","","","img/shop/std6.jpg",""),
(null,"名瑞聚绣轩","广东省潮州市湘桥区城新路中段名瑞楼","0768-2361010","","img/shop/std7.jpg","周一至周日10:30-21:30"),
(null,"中国刺绣展馆","潮州市湘桥区城新西路名瑞楼2-3楼","","","img/shop/std8.jpg","");

#首页banner
create table banner(
    bid int primary key auto_increment,
    img varchar(256)
);
insert into banner values
(null,"img/index-banner/1.jpg"),
(null,"img/index-banner/2.jpg"),
(null,"img/index-banner/3.jpg"),
(null,"img/index-banner/4.jpg"),
(null,"img/index-banner/5.jpg");



