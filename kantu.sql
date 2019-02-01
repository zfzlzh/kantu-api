SET NAMES UTF8;
DROP DATABASE IF EXISTS poco;
CREATE DATABASE poco CHARSET=UTF8;
USE poco;

--推荐 
CREATE TABLE poco_index_recommend(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(128),
    tip VARCHAR(10),
    auther VARCHAR(20),
    avatar VARCHAR(128),
    good INT
);
-- 1人像 2风景 3宠物 4生活 5航拍 6潜水 7纪实
                   
INSERT INTO poco_index_recommend VALUES
    (NULL,"http://127.0.0.1:3000/img/index/recommend/people.jpg","人像","tom","http://127.0.0.1:3000/img/index/avatar/1.jpg",400),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/nature.jpg","风景","jerry","http://127.0.0.1:3000/img/index/avatar/2.jpg",450),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/anima.jpg","风景","dadada","http://127.0.0.1:3000/img/index/avatar/3.jpg",410),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/cat.jpg","宠物","zzzz","http://127.0.0.1:3000/img/index/avatar/4.jpg",500),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/food.jpg","生活","xxxx","http://127.0.0.1:3000/img/index/avatar/5.jpg",480),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/life.jpg","生活","tttt","http://127.0.0.1:3000/img/index/avatar/6.jpg",495),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/plane.jpg","航拍","tom","http://127.0.0.1:3000/img/index/avatar/3.jpg",464),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/sea.jpg","潜水","tom","http://127.0.0.1:3000/img/index/avatar/1.jpg",423),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/reality.jpg","纪实","tom","http://127.0.0.1:3000/img/index/avatar/5.jpg",452),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/nature2.jpg","风景","dadada","http://127.0.0.1:3000/img/index/avatar/3.jpg",350),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/plane2.jpg","航拍","zzzz","http://127.0.0.1:3000/img/index/avatar/4.jpg",600),
    (NULL,"http://127.0.0.1:3000/img/index/recommend/food2.jpg","生活","xxxx","http://127.0.0.1:3000/img/index/avatar/5.jpg",523);

-- 轮播图
CREATE TABLE poco_index_carousel(
     pid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(150),
    pic_info_title VARCHAR(60),
    pic_info VARCHAR(128)
);
INSERT INTO poco_index_carousel VALUES
(NULL,"http://127.0.0.1:3000/img/index/carousel/1.jpg","当脑洞与摄影结合，真·艺术","谁说摄影只是技术，摄影，明明是可以玩儿出来的！下面这些照片，你能准确分清哪些是手机拍的哪些是相机拍的吗？"),
(NULL,"http://127.0.0.1:3000/img/index/carousel/2.jpg","当神经学博士拿起手机，他眼前的建筑竟然都“活”了","约书亚的作品具有极强的个人风格，并且偏爱建筑摄影，看完他的作品，你可能会有一种错觉，那些明明都不会动的建筑，仿佛都有了各自的情绪。"),
(NULL,"http://127.0.0.1:3000/img/index/carousel/3.jpg","2018 iPhone摄影大赛获奖作品新鲜速递！","对于手机摄影界来说，今天是个特别的日子！因为第11届iPhone 摄影大赛在今天公布了获奖作品！其中有不少中国摄影师斩获了奖项，快来数数有几个中国摄影师上榜吧~"),
(NULL,"http://127.0.0.1:3000/img/index/carousel/4.jpg","手机摄影——最简单的工具和最直接的记录","大抵艺术都是相通的，Simon的摄影作品和他的设计与手工艺作品一样，充斥着对周遭环境的反思和专研。你会发现他手机镜头下的花草、建筑、自然都有着最本真的状态，但又不显得乏味可陈和千篇一律。"),
(NULL,"http://127.0.0.1:3000/img/index/carousel/5.jpg","2018 iPhone摄影大赛获奖作品新鲜速递！","对于手机摄影界来说，今天是个特别的日子！因为第11届iPhone 摄影大赛在今天公布了获奖作品！其中有不少中国摄影师斩获了奖项，快来数数有几个中国摄影师上榜吧~")
;
-- 热门作者
CREATE TABLE poco_index_hot(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    hname VARCHAR(20),
    bg_img VARCHAR(150),
    avatar VARCHAR(150),
    hot_info VARCHAR(150)
);
INSERT INTO poco_index_hot VALUES
(NULL,"赞巴拉","http://127.0.0.1:3000/img/index/hot/1.JPG","http://127.0.0.1:3000/img/index/avatar/1da.jpg","风光旅游摄影红人，现任POCO摄影总版主，2008年POCO全国风光十佳摄影师、2010年POCO摄影突出贡献奖、2014年度POCO特别贡献奖，荣获POCO各类勋章超过100枚，上海工艺美院摄影讲师。"),
(NULL,"劉展耘","http://127.0.0.1:3000/img/index/hot/2.jpg","http://127.0.0.1:3000/img/index/avatar/2da.jpg","瑞丽首席摄影，知名时尚摄影师，POCO年度全国实力摄影师，广告合作包括MOTO、IBM、TCL、LG、西门子、中国移动、动感地带等，拍摄作品发表杂志包括《时尚伊人》《时尚笆莎》《时尚先生》等。"),
(NULL,"楚狂","http://127.0.0.1:3000/img/index/hot/3.jpg","http://127.0.0.1:3000/img/index/avatar/3da.jpg","多魔摄影创始人，人像摄影师，一直感动于生活中不同画面与故事，发现并记录那些瞬间，作为回忆久久珍藏...与《爱格》、《许愿树》、《花火》、《旅游世界》等多家杂志及出版社合作。擅长日系唯美清新风格。"),
(NULL,"音乐心情","http://127.0.0.1:3000/img/index/hot/4.jpg","http://127.0.0.1:3000/img/index/avatar/4da.jpg","玩音乐，爱摄影！作品多次在《中国国家地理》、《中华遗产》、《旅游世界》、《今日民族》等杂志上发表。作品《天上人间》获得“中国摄影家协会走进浙江”三等奖。");

CREATE TABLE poco_details_info(
    iid INT PRIMARY KEY AUTO_INCREMENT,
    pid INT ,
    pname VARCHAR(100),
    auther VARCHAR(25),
    avatar VARCHAR(200),
    auther_info VARCHAR(100),
    good INT,
    visiter INT,
    pic_info VARCHAR(255),
    date_time VARCHAR(30),
    kind VARCHAR(20)
);
INSERT INTO poco_details_info VALUES
(NULL,4,"家有萌宠","cat","http://127.0.0.1:3000/img/index/avatar/1da.jpg","摄影乐园4级","222","16528","小调皮小可爱
要拍照真不容易","2018-11-06","宠物");