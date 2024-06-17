<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>破坏案例</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        .item {
            width: 100%;
            padding: 30px 0;
        }

        .item div {
            width: 100%;
            display: flex;
            justify-content: space-around;
            margin-top: 30px;
        }

        .item img {
            border-radius: 10px;
            width: 300px;
            height: 230px;
        }

        .item p {
            line-height: 30px;
            width: 50%;
        }
        p{
            line-height: 30px;
            width: 100%;
            font-size: 14px;
        }
    </style>
</head>
<body>
<header>
    <h1>破坏案例</h1>
    <nav>
        <ul>
            <li><a href="home.jsp">环境首页</a></li>
            <li><a href="#">破坏案例</a></li>
            <li><a href="haoChu.jsp">保护好处</a></li>
            <li><a href="lianXi.jsp">联系我们</a></li>
        </ul>
    </nav>
    <button class="header-button">
        <a href="bd.jsp">
            <img src="img/gly.png" width="17" alt="">
            <br>
        </a>
    </button>
</header>
<img class="banner" src="img/bj1.jpg" alt="">
<div class="main">
    <div class="content_left">
        <div class="user">
            <p class="title">被破坏后的地球</p>
            <img src="img/zuoyuan1.jpg" alt="">
            <p><b>当前面临的环境问题：</b></P>
            <p><b>1、大气污染问题：</b>大气污染是我国第一大环境污染问题，在我们47个重点城市中，约70％以上的城市大气环境质量达不到中国规定的二级标准参加环境统计的338个城市中，137个城市空气环境质量超过中国三级标准，占统计城市的40%，属于严重污染型城市。2011年我国二氧化硫年排放量高达1857万吨，烟尘1159万吨，工业粉尘1175万吨。</p>
            <p><b>2、水环境污染问题：</b>我国七大水系的污染程度依次是：辽河、海河、淮河、黄河、松花江、珠江、长江，其中42％的水质超过类标准（不能做饮用水源），全国有36％的城市河段为劣5类水质，丧失使用功能。大型淡水湖泊（水库）和城市湖泊水质普遍较差，75％以上的湖泊富营养化加剧，主要由氛、磷污染引起。</p>
            <p><b>3、垃圾处理问题：</b>我国全国工业固体废物年产生量达8.2亿吨，综合利用率约46%。全国城市生活垃圾年产生量为1.4亿吨，达到无害化处理要求的不到10%。塑料包装物和衣膜导致的白色污染已蔓延全国各地。</p>
            <p><b>4、土地荒漠化和沙灾问题：</b>目前，我国国土上的荒漠化土地已占国土陆地总面积的27.3%，而且，荒漠化面积还以每年2460平方公里的速度增长。中国每年遭受的强沙尘暴天气由50年代的5次增加到了90年代的23次。土地沙化造成了内蒙古一些地区的居民被迫迁移他乡。</p>
            <p><b>5、水土流失问题：</b>我国全国每年流失的土壤总量达50多亿吨，每年流失的土壤养分为4000万吨标准化肥（相当于全国一年的化肥使用量）。自1949年以来，我国水土流失毁掉的耕地总量达4000万亩，这对我们的农业是极大损失。</p>
        </div>
    </div>
    <div class="content_rigth">
        <p class="title">造成原因</p>
        <div class="item">
            <div>
                <img src="img/pohuai1.jpg">
                <p><b>大气污染：</b>自然或人为原因使大气圈层中某些成分超过正常含量或排入有毒有害的物质，对人类、生物和物体造成危害的现象。 按照国际标准化组织（ISO）的定义，"大气污染通常是指由于人类活动或自然过程引起某些物质进入大气中，呈现出足够的浓度，达到足够的时间，并因此危害了人体的舒适、健康和福利或环境污染的现象"。
                </p>
            </div>
            <div>
                <img src="img/pohuai2.jpg">
                <p><b>水污染：</b>水体因某种物质的介入，而导致其化学、物理、生物或者放射性等方面特性的改变，从而影响水的有效利用，危害人体健康或者破坏生态环境，造成水质恶化的现象。</p>
            </div>
            <div>
                <img src="img/pohuai3.jpg">
                <p><b>环境噪声污染：</b>在工业生产、建筑施工、交通运输和社会生活中所产生的干扰周围生活环境的声音，超过国家规定的环境噪声排放标准，并干扰他人正常生活、工作和学习的现象。</p>
            </div>
            <div>
                <img src="img/pohuai4.jpg">
                <p><b>土壤污染：</b>天然土壤具有纯粹的自然属性。人类最初开垦土地，主要是从中索取更多的生物量。已开垦的土地逐渐变得贫瘠，人们就向农田补充一些物质一一肥料。农田获得肥力，同时也受到了污染。譬如施用人畜类尿作为肥料，的确能保持农田的良好生产性能，但粪尿中的病原体随之进入农田，造成土壤污染。
                </p>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <p>版权所有 © 2024 绿色化发展</p>
</div>
</body>
</html>
