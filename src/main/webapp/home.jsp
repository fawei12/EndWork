<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>环境首页</title>
    <link href="css/style.css" rel="stylesheet">
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
            border-radius: 15px;
            width: 300px;
            height: 370px;
        }

        .item p {
            line-height: 35px;
            width: 35%;
        }
    </style>
</head>
<body>
<header>
    <h1>绿色发展</h1>
    <nav>
        <ul>
            <li><a href="#">环境首页</a></li>
            <li><a href="pohuai.jsp">破坏案例</a></li>
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
<img class="banner" src="img/bj.jpg" alt="">
<div class="main">
    <div class="content_left">
        <div class="user">
            <p class="title">生态保护的必要性</p>
            <img src="img/zuoyuan.jpg" alt="">
            <div>
                <p><b>加强环境监督：</b>环境监管是环境保护的基础，必须建立严格的环境管理体系，落实环境监管责任。加强环境监测，记录环境污染和环境质量的数据，及时对环境污染进行处罚和监管。
                </p>
                <p><b>提升环境素质：</b>环境素质是环境保护的关键，在环境保护教育方面要深入推进全民环保教育，加强环保法律法规宣传，提高公众环保意识和环保技能，加强环保宣传教育，以提升人们的环保意识和行为习惯，从而推动环保行动。
                </p>
                <p><b>控制工业污染：</b>工业是造成环境污染的重要因素之一，必须根据国家的环境保护要求，采取不同的措施，不断完善各种清洁生产和治理技术，提高企业危险废物的处理能力，促进污染物的减排和资源的循环利用。
                </p>
                <p><b>合理利用资源：</b>资源是人类生产和生活的基础，必须合理利用资源，防止资源的浪费和过度利用。因此，必须加强资源管理，制定合理的资源规划和利用方案，提高资源的利用效率和节约用水、用电、用气。
                </p>
            </div>
        </div>
    </div>
    <div class="content_rigth">
            <p class="title">环境治理与和谐</p>
            <div class="item">
                <div>
                    <img src="img/huanbao.jpg">
                    <p><b>保护环境，爱护地球：</b>环境保护对于人类社会的发展具有非常重要的意义，因此，生态环境保护必须要建立在广大人民群众普遍认同和自觉自为的基础之上，才能达到预期目的和更好
                        的效果，这就需要让生态意识和环保意识成为全民共同的价值理念，全社会担负起保护生态环境的共同责任，使生态价值观成为人们的一种行为准则，让我们一同保护环境，爱护地球。
                    </p>
                </div>
                <div>
                    <p><b>携手共建美丽家园：</b> 生态环境保护不仅仅是一项责任和义务，更是一项使命和未来的选择。唯有重视生态环境保护的重要性和意义，我们才能共同努力，采取合理的措施，
                        减少对自然环境的破坏，保护人类的栖息地。全社会应重视生态规律、自觉注意环境卫生、善待地球生命、自发节约资源等，让我们每个人都加入到生态环境保护的行动中，共同建设美丽的地球家园。
                    </p>
                    <img src="img/xieshou.jpg">
                </div>
                <div>
                    <img src="img/huanbao1.jpg">
                    <p><b>实现可持续发展：</b>保护环境是为了人类世界的可持续发展。自然环境是人类赖以生存的家园，人类生存发展所需要的资源全都依赖于大自然，从衣食住行的物质需求，到精神文化需求都离不开自然环境的馈赠。
                        一旦环境遭到破坏，人类的生活质量必然受到影响，饥饿、疾病、自然灾害都将随之而来。</p>
                </div>
            </div>
    </div>
</div>
<div class="footer">
    <p>版权所有 © 2024 绿色化发展</p>
</div>
</body>
</html>
