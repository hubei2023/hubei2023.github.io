---
layout: home
title: 被认知圈养
description: 探索认知的边界，突破思维的牢笼
---

<div class="mindmap-container">
  <div class="top-bar">
    <h2 class="title-left">底层逻辑</h2>
    <div class="search-container">
      <input type="text" id="searchInput" placeholder="搜索书籍或作者..." class="search-box">
      <button class="search-btn" onclick="searchBooks()">🔍</button>
    </div>
  </div>
  
  <div class="mermaid">
    mindmap
      root((认知探索))
        (哲学思辨)
          [理想国 - 柏拉图]
          [论法的精神 - 孟德斯鸠]
          [社会契约论 - 卢梭]
          [伦理学 - 斯宾诺莎]
          [宽容 - 房龙]
          [政府论 - 洛克]
        (心理学洞察)
          [心理学与生活]
          [追寻生命的意义 - 弗兰克尔]
          [拖延心理学]
          [梦的解析 - 弗洛伊德]
          [人的潜能和价值 - 马斯洛]
          [乌合之众 - 勒庞]
          [爱的艺术 - 弗洛姆]
          [人性的弱点 - 卡耐基]
        (经济学智慧)
          [经济学原理 - 曼昆]
          [激荡三十年 - 吴晓波]
          [长尾理论 - 安德森]
          [欢乐的经济学]
          [无价 - 庞德斯通]
        (文学艺术)
          [悲惨世界 - 雨果]
          [红与黑 - 司汤达]
          [老人与海 - 海明威]
          [平凡的世界 - 路遥]
          [芙蓉镇 - 古华]
          [雪国 - 川端康成]
          [小王子 - 圣埃克苏佩里]
          [人间词话 - 王国维]
          [西方美学史 - 朱光潜]
          [玩偶之家 - 易卜生]
          [一九八四 - 奥威尔]
          [目送 - 龙应台]
        (科学探索)
          [生命是什么 - 薛定谔]
          [自私的基因 - 道金斯]
          [设计心理学 - 诺曼]
          [浅薄 - 卡尔]
        (历史文化)
          [西方的没落 - 斯宾格勒]
          [历史研究 - 汤因比]
          [论美国的民主 - 托克维尔]
          [菊花与刀 - 本尼迪克特]
        (商业管理)
          [惠普之道 - 帕卡德]
          [麦肯锡方法 - 拉塞尔]
          [人月神话 - 布鲁克斯]
          [Facebook效应]
        (沟通影响)
          [如何阅读一本书]
          [影响力 - 西奥迪尼]
          [非暴力沟通 - 卢森堡]
          [策略思维 - 迪克西特]
          [定位 - 里斯]
        (军事战略)
          [战争论 - 克劳塞维茨]
        (政治法理)
          [正义论 - 罗尔斯]
  </div>
  
  <!-- 书籍信息悬浮框 -->
  <div id="bookTooltip" class="book-tooltip">
    <div class="tooltip-header">
      <h3 id="tooltipTitle"></h3>
      <span id="tooltipAuthor"></span>
    </div>
    <div class="tooltip-meta">
      <div class="meta-item">
        <span class="meta-label">📅 写作时间:</span>
        <span id="tooltipYear"></span>
      </div>
      <div class="meta-item">
        <span class="meta-label">🌍 国籍:</span>
        <span id="tooltipCountry"></span>
      </div>
    </div>
    <div class="tooltip-content">
      <p id="tooltipDescription"></p>
    </div>
  </div>
</div>

<style>
/* 全屏样式重置 */
body, html {
  margin: 0;
  padding: 0;
  height: 100%;
  overflow: hidden;
}

.page-content {
  padding: 0 !important;
  margin: 0 !important;
}

.wrapper {
  max-width: none !important;
  padding: 0 !important;
  margin: 0 !important;
}

.mindmap-container {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  margin: 0;
  padding: 0;
  background: #fff;
  z-index: 1000;
  display: flex;
  flex-direction: column;
}

/* 顶部栏样式 */
.top-bar {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 70px;
  background: rgba(255, 255, 255, 0.95);
  backdrop-filter: blur(10px);
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 30px;
  box-sizing: border-box;
  z-index: 1001;
}

/* 左上角标题 */
.title-left {
  color: #2c3e50;
  font-size: 24px;
  margin: 0;
  font-weight: 600;
  text-shadow: 0 1px 2px rgba(0,0,0,0.1);
}

/* 右上角搜索框容器 */
.search-container {
  display: flex;
  align-items: center;
  gap: 10px;
}

.search-box {
  width: 300px;
  height: 40px;
  padding: 0 15px;
  border: 2px solid #e1e8ed;
  border-radius: 20px;
  font-size: 14px;
  outline: none;
  transition: all 0.3s ease;
  background: rgba(255, 255, 255, 0.9);
}

.search-box:focus {
  border-color: #3498db;
  box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.1);
  background: rgba(255, 255, 255, 1);
}

.search-box::placeholder {
  color: #95a5a6;
}

.search-btn {
  width: 40px;
  height: 40px;
  border: none;
  border-radius: 50%;
  background: #3498db;
  color: white;
  font-size: 16px;
  cursor: pointer;
  transition: all 0.3s ease;
  display: flex;
  align-items: center;
  justify-content: center;
}

.search-btn:hover {
  background: #2980b9;
  transform: scale(1.05);
}

.search-btn:active {
  transform: scale(0.95);
}

.mermaid {
  width: 100%;
  height: 100vh;
  background: #f8f9fa;
  padding: 70px 0 0 0;
  margin: 0;
  border-radius: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  box-sizing: border-box;
}

/* 书籍信息悬浮框样式 */
.book-tooltip {
  position: absolute;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 20px;
  border-radius: 12px;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
  max-width: 350px;
  min-width: 280px;
  z-index: 2000;
  opacity: 0;
  visibility: hidden;
  transform: translateY(10px);
  transition: all 0.3s ease;
  pointer-events: none;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
}

.book-tooltip.show {
  opacity: 1;
  visibility: visible;
  transform: translateY(0);
}

.tooltip-header {
  margin-bottom: 15px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.3);
  padding-bottom: 10px;
}

.tooltip-header h3 {
  margin: 0 0 5px 0;
  font-size: 18px;
  font-weight: 600;
  color: #fff;
}

.tooltip-header span {
  font-size: 14px;
  color: rgba(255, 255, 255, 0.9);
  font-style: italic;
}

.tooltip-meta {
  margin-bottom: 15px;
}

.meta-item {
  display: flex;
  align-items: center;
  margin-bottom: 8px;
  font-size: 13px;
}

.meta-label {
  font-weight: 500;
  margin-right: 8px;
  min-width: 80px;
  color: rgba(255, 255, 255, 0.9);
}

.tooltip-content p {
  margin: 0;
  line-height: 1.6;
  font-size: 14px;
  color: rgba(255, 255, 255, 0.95);
}

/* 隐藏页面其他元素 */
.site-header,
.site-footer {
  display: none !important;
}

/* 移动端适配 */
@media (max-width: 768px) {
  .top-bar {
    height: 60px;
    padding: 0 15px;
    flex-direction: column;
    justify-content: center;
    gap: 10px;
  }
  
  .title-left {
    font-size: 16px;
    text-align: center;
  }
  
  .search-container {
    width: 100%;
    justify-content: center;
  }
  
  .search-box {
    width: 200px;
    height: 35px;
    font-size: 13px;
  }
  
  .search-btn {
    width: 35px;
    height: 35px;
    font-size: 14px;
  }
  
  .mermaid {
    padding: 60px 0 0 0;
  }
  
  .book-tooltip {
    max-width: 280px;
    min-width: 250px;
    padding: 15px;
  }
  
  .tooltip-header h3 {
    font-size: 16px;
  }
  
  .tooltip-content p {
    font-size: 13px;
  }
}

@media (max-width: 480px) {
  .top-bar {
    height: 80px;
  }
  
  .title-left {
    font-size: 14px;
  }
  
  .search-box {
    width: 150px;
  }
  
  .mermaid {
    padding: 80px 0 0 0;
  }
  
  .book-tooltip {
    max-width: 250px;
    min-width: 220px;
  }
}

/* 确保思维导图SVG充满容器 */
.mermaid svg {
  width: 100% !important;
  height: 100% !important;
  max-width: none !important;
  max-height: none !important;
}

/* 搜索结果高亮样式 */
.highlight {
  background-color: #fff3cd !important;
  border: 2px solid #ffc107 !important;
  animation: pulse 1s ease-in-out;
}

@keyframes pulse {
  0% { transform: scale(1); }
  50% { transform: scale(1.05); }
  100% { transform: scale(1); }
}

/* 书籍节点悬停效果 */
.mermaid .mindmap-node:hover {
  cursor: pointer;
  filter: brightness(1.1);
}
</style>

<script src="https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.min.js"></script>
<script>
// 书籍详细信息数据库
const bookDatabase = {
  "理想国": {
    author: "柏拉图",
    year: "公元前380年",
    country: "古希腊",
    description: "西方政治哲学的奠基之作，通过苏格拉底与他人的对话，探讨正义的本质、理想的政治制度和哲学家治国的理念。书中提出了著名的'洞穴比喻'，阐述了知识与真理的关系。"
  },
  "论法的精神": {
    author: "孟德斯鸠",
    year: "1748年",
    country: "法国",
    description: "启蒙时代的政治学经典，系统阐述了三权分立理论。孟德斯鸠通过对各国政治制度的比较研究，提出了立法权、行政权、司法权相互制衡的政治理念，对现代民主制度产生了深远影响。"
  },
  "社会契约论": {
    author: "卢梭",
    year: "1762年",
    country: "法国",
    description: "启蒙思想的重要著作，提出了'人人生而自由，但无往不在枷锁之中'的著名论断。卢梭论述了政治权力的合法性来源于人民的同意，为现代民主理论奠定了基础。"
  },
  "伦理学": {
    author: "斯宾诺莎",
    year: "1677年",
    country: "荷兰",
    description: "用几何学方法构建的哲学体系，探讨人性、情感和自由意志。斯宾诺莎认为理性是通向幸福的唯一途径，提出了'知识就是力量'的理念，对后世哲学产生了重要影响。"
  },
  "宽容": {
    author: "房龙",
    year: "1925年",
    country: "荷兰裔美国",
    description: "以生动的笔触描述了人类争取思想自由的历史进程。从古希腊到现代，房龙展现了宽容精神如何在与偏见、迷信的斗争中逐步确立，是一部关于人类精神解放的史诗。"
  },
  "政府论": {
    author: "洛克",
    year: "1689年",
    country: "英国",
    description: "现代自由主义政治哲学的奠基之作。洛克论证了政府权力来源于人民同意，提出了天赋人权、有限政府、分权制衡等重要理念，对美国独立宣言和宪法产生了直接影响。"
  },
  "心理学与生活": {
    author: "格里格 & 津巴多",
    year: "1971年",
    country: "美国",
    description: "心理学入门的经典教材，将心理学理论与日常生活紧密结合。涵盖认知、学习、记忆、情感、社会心理等各个领域，用通俗易懂的语言解释复杂的心理现象。"
  },
  "追寻生命的意义": {
    author: "弗兰克尔",
    year: "1946年",
    country: "奥地利",
    description: "基于作者在纳粹集中营的亲身经历，探讨人类在极端困境中寻找生命意义的心路历程。弗兰克尔提出了意义疗法，认为追求意义是人类最基本的动机。"
  },
  "拖延心理学": {
    author: "简·博克 & 莱诺拉·袁",
    year: "1983年",
    country: "美国",
    description: "深入分析拖延行为的心理根源，包括完美主义、恐惧失败、反抗权威等因素。提供了实用的克服拖延的策略和方法，帮助读者建立更高效的行为模式。"
  },
  "梦的解析": {
    author: "弗洛伊德",
    year: "1900年",
    country: "奥地利",
    description: "精神分析学的奠基之作，提出了'梦是愿望的达成'这一著名理论。弗洛伊德通过对梦境的分析，揭示了无意识心理活动的规律，开创了现代心理学的新纪元。"
  },
  "人的潜能和价值": {
    author: "马斯洛",
    year: "1968年",
    country: "美国",
    description: "人本主义心理学的重要著作，提出了著名的需求层次理论。马斯洛强调人的自我实现潜能，认为每个人都有追求成长和完善的内在动机。"
  },
  "乌合之众": {
    author: "勒庞",
    year: "1895年",
    country: "法国",
    description: "群体心理学的开山之作，分析了群体行为的特点和规律。勒庞指出群体具有冲动、易变、急躁等特征，为理解现代社会的集体行为提供了重要视角。"
  },
  "爱的艺术": {
    author: "弗洛姆",
    year: "1956年",
    country: "德裔美国",
    description: "探讨爱的本质和实践的经典之作。弗洛姆认为爱是一种艺术，需要学习和练习。他分析了不同类型的爱，提出了成熟的爱应该具备的要素。"
  },
  "人性的弱点": {
    author: "卡耐基",
    year: "1936年",
    country: "美国",
    description: "人际关系学的经典著作，提供了改善人际关系、增强个人魅力的实用技巧。卡耐基通过大量实例，教导读者如何赢得友谊、影响他人、建立自信。"
  },
  "经济学原理": {
    author: "曼昆",
    year: "1998年",
    country: "美国",
    description: "现代经济学入门的权威教材，以清晰的逻辑和生动的实例解释经济学基本原理。涵盖微观经济学和宏观经济学的核心概念，是理解市场经济运行机制的必读之作。"
  },
  "激荡三十年": {
    author: "吴晓波",
    year: "2007年",
    country: "中国",
    description: "记录中国改革开放三十年企业发展历程的经典之作。通过对重要企业家和商业事件的深度剖析，展现了中国经济转型的波澜壮阔历程。"
  },
  "长尾理论": {
    author: "安德森",
    year: "2006年",
    country: "美国",
    description: "互联网时代商业模式的重要理论。安德森提出在数字化时代，小众产品和服务也能获得巨大的市场价值，颠覆了传统的'二八定律'。"
  },
  "欢乐的经济学": {
    author: "戴维·亨德森",
    year: "2002年",
    country: "美国",
    description: "用轻松幽默的方式解释经济学原理，让复杂的经济理论变得通俗易懂。通过日常生活中的例子，展示经济学思维如何帮助我们更好地理解世界。"
  },
  "无价": {
    author: "庞德斯通",
    year: "2010年",
    country: "美国",
    description: "探讨价格心理学的有趣著作，揭示了人们在定价和购买决策中的认知偏差。通过大量实验和案例，说明价格如何影响我们的判断和行为。"
  },
  "悲惨世界": {
    author: "雨果",
    year: "1862年",
    country: "法国",
    description: "法国浪漫主义文学的巅峰之作，通过冉阿让的人生经历，展现了19世纪法国社会的黑暗与光明。作品深刻反思了法律与道德、正义与仁慈的关系。"
  },
  "红与黑": {
    author: "司汤达",
    year: "1830年",
    country: "法国",
    description: "法国批判现实主义文学的代表作，通过于连的悲剧命运，深刻揭露了复辟时期法国社会的虚伪和腐败。是一部关于个人野心与社会现实冲突的经典小说。"
  },
  "老人与海": {
    author: "海明威",
    year: "1952年",
    country: "美国",
    description: "海明威的代表作，讲述了老渔夫圣地亚哥与大鱼搏斗的故事。作品体现了'硬汉精神'，表达了人类在面对困境时不屈不挠的意志品质。"
  },
  "平凡的世界": {
    author: "路遥",
    year: "1986年",
    country: "中国",
    description: "描写中国70-80年代农村生活的长篇小说，通过孙少安、孙少平兄弟的奋斗历程，展现了普通人在时代变迁中的坚韧与追求。"
  },
  "芙蓉镇": {
    author: "古华",
    year: "1981年",
    country: "中国",
    description: "反映中国农村在政治运动中变迁的长篇小说，通过胡玉音等人的命运，展现了普通人在历史洪流中的挣扎与坚守。"
  },
  "雪国": {
    author: "川端康成",
    year: "1948年",
    country: "日本",
    description: "日本文学的经典之作，以细腻的笔触描绘了雪国的美景和人物的内心世界。作品体现了日本传统美学中的'物哀'精神。"
  },
  "小王子": {
    author: "圣埃克苏佩里",
    year: "1943年",
    country: "法国",
    description: "看似简单的童话故事，实则蕴含深刻的人生哲理。通过小王子的星际旅行，探讨了友谊、爱情、责任等人生主题，是一部老少皆宜的经典。"
  },
  "人间词话": {
    author: "王国维",
    year: "1910年",
    country: "中国",
    description: "中国古典文学批评的重要著作，提出了'境界'说的文学理论。王国维融合中西文学观念，对中国古典诗词进行了深入的美学分析。"
  },
  "西方美学史": {
    author: "朱光潜",
    year: "1963年",
    country: "中国",
    description: "系统梳理西方美学思想发展历程的重要著作，从古希腊到现代，全面介绍了西方美学的主要流派和代表人物，是美学研究的经典教材。"
  },
  "玩偶之家": {
    author: "易卜生",
    year: "1879年",
    country: "挪威",
    description: "现代戏剧的里程碑之作，通过娜拉的觉醒和出走，深刻揭示了传统家庭制度对女性的束缚，是女性主义文学的重要作品。"
  },
  "一九八四": {
    author: "奥威尔",
    year: "1949年",
    country: "英国",
    description: "反乌托邦小说的经典之作，描绘了一个极权主义社会的恐怖景象。通过温斯顿的遭遇，警示人们警惕权力的滥用和思想的控制。"
  },
  "目送": {
    author: "龙应台",
    year: "2008年",
    country: "中国台湾",
    description: "感人至深的散文集，通过对亲情、友情、爱情的细腻描写，探讨了人生的离别与成长。龙应台以母亲和女儿的双重身份，书写了生命中的温暖与感动。"
  },
  "生命是什么": {
    author: "薛定谔",
    year: "1944年",
    country: "奥地利",
    description: "量子力学奠基人对生命本质的深刻思考，从物理学角度探讨生命现象。薛定谔提出了'负熵'概念，为分子生物学的发展提供了重要启发。"
  },
  "自私的基因": {
    author: "道金斯",
    year: "1976年",
    country: "英国",
    description: "进化生物学的经典著作，提出了'基因中心论'的进化观点。道金斯用通俗的语言解释了复杂的进化理论，改变了人们对生命和进化的理解。"
  },
  "设计心理学": {
    author: "诺曼",
    year: "1988年",
    country: "美国",
    description: "用户体验设计的奠基之作，探讨了人与物品交互的心理机制。诺曼提出了以用户为中心的设计理念，对现代产品设计产生了深远影响。"
  },
  "浅薄": {
    author: "卡尔",
    year: "2010年",
    country: "美国",
    description: "探讨互联网对人类思维影响的重要著作。卡尔认为网络正在改变我们的大脑结构，使我们的思维变得浅薄和分散，引发了对数字时代的深度思考。"
  },
  "西方的没落": {
    author: "斯宾格勒",
    year: "1918年",
    country: "德国",
    description: "文明史学的里程碑之作，提出了文明有机体理论。斯宾格勒认为文明如生物一样有生老病死的周期，对西方文明的未来提出了悲观的预测。"
  },
  "历史研究": {
    author: "汤因比",
    year: "1934年",
    country: "英国",
    description: "宏观历史学的经典著作，通过对26个文明的比较研究，探讨了文明兴衰的规律。汤因比提出了'挑战-应战'理论，为理解历史发展提供了新视角。"
  },
  "论美国的民主": {
    author: "托克维尔",
    year: "1835年",
    country: "法国",
    description: "对美国民主制度的深入观察和分析，被誉为研究美国社会的经典之作。托克维尔不仅赞扬了民主的优点，也指出了民主可能带来的问题。"
  },
  "菊花与刀": {
    author: "本尼迪克特",
    year: "1946年",
    country: "美国",
    description: "人类学研究日本文化的经典著作，通过'菊花与刀'的比喻，深刻分析了日本文化中美与暴力、礼貌与好斗并存的矛盾特征。"
  },
  "惠普之道": {
    author: "帕卡德",
    year: "1995年",
    country: "美国",
    description: "硅谷传奇企业惠普公司的管理哲学和企业文化。帕卡德分享了惠普在技术创新、人才管理、企业价值观方面的成功经验。"
  },
  "麦肯锡方法": {
    author: "拉塞尔",
    year: "1999年",
    country: "美国",
    description: "揭示世界顶级咨询公司麦肯锡的工作方法和思维模式。拉塞尔介绍了结构化思维、问题解决技巧等实用的商业分析方法。"
  },
  "人月神话": {
    author: "布鲁克斯",
    year: "1975年",
    country: "美国",
    description: "软件工程领域的经典著作，提出了著名的'布鲁克斯定律'：向进度落后的项目中增加人手，只会使进度更加落后。对软件项目管理具有重要指导意义。"
  },
  "Facebook效应": {
    author: "柯克帕特里克",
    year: "2010年",
    country: "美国",
    description: "记录Facebook创建和发展历程的纪实作品，展现了社交网络如何改变人类的交流方式和社会结构，是理解数字时代的重要读物。"
  },
  "如何阅读一本书": {
    author: "艾德勒 & 范多伦",
    year: "1940年",
    country: "美国",
    description: "阅读方法论的经典之作，系统介绍了基础阅读、检视阅读、分析阅读、主题阅读四个层次的阅读方法，是提升阅读能力的必读指南。"
  },
  "影响力": {
    author: "西奥迪尼",
    year: "1984年",
    country: "美国",
    description: "社会心理学的经典著作，揭示了影响他人决策的六大原理：互惠、承诺一致、社会认同、喜好、权威、稀缺。对营销、管理、人际交往具有重要指导价值。"
  },
  "非暴力沟通": {
    author: "卢森堡",
    year: "1999年",
    country: "美国",
    description: "改善人际关系的沟通方法，提出了观察、感受、需要、请求四要素的沟通模式。卢森堡教导人们如何用爱的语言化解冲突，建立和谐关系。"
  },
  "策略思维": {
    author: "迪克西特",
    year: "1991年",
    country: "美国",
    description: "博弈论在日常生活中的应用，通过生动的案例解释了策略思维的重要性。帮助读者学会在竞争与合作中做出最优决策。"
  },
  "定位": {
    author: "里斯",
    year: "1981年",
    country: "美国",
    description: "营销学的革命性著作，提出了'定位'理论。里斯认为营销的本质不是制造产品，而是在消费者心智中占据有利位置，对现代营销产生了深远影响。"
  },
  "战争论": {
    author: "克劳塞维茨",
    year: "1832年",
    country: "普鲁士",
    description: "军事理论的经典之作，提出了'战争是政治的延续'这一著名论断。克劳塞维茨系统分析了战争的本质、特点和规律，对军事思想产生了深远影响。"
  },
  "正义论": {
    author: "罗尔斯",
    year: "1971年",
    country: "美国",
    description: "当代政治哲学的里程碑之作，提出了'无知之幕'和'差别原则'等重要概念。罗尔斯试图为现代社会构建一个公正的制度框架。"
  }
};

mermaid.initialize({
  startOnLoad: true,
  theme: 'default',
  securityLevel: 'loose',
  mindmap: {
    diagramPadding: 20,
    nodeSpacing: 80,
    curve: 'basis'
  }
});

// 搜索功能
function searchBooks() {
  const searchTerm = document.getElementById('searchInput').value.toLowerCase().trim();
  
  if (!searchTerm) {
    alert('请输入搜索关键词');
    return;
  }
  
  // 清除之前的高亮
  clearHighlights();
  
  // 获取所有思维导图节点
  const nodes = document.querySelectorAll('.mermaid text');
  let found = false;
  
  nodes.forEach(node => {
    const text = node.textContent.toLowerCase();
    if (text.includes(searchTerm)) {
      // 高亮匹配的节点
      const parentNode = node.closest('g');
      if (parentNode) {
        parentNode.classList.add('highlight');
        found = true;
        
        // 滚动到第一个匹配项
        if (!found) {
          parentNode.scrollIntoView({ behavior: 'smooth', block: 'center' });
        }
      }
    }
  });
  
  if (!found) {
    alert(`未找到包含 "${searchTerm}" 的书籍或作者`);
  } else {
    // 3秒后清除高亮
    setTimeout(clearHighlights, 3000);
  }
}

// 清除高亮
function clearHighlights() {
  const highlighted = document.querySelectorAll('.highlight');
  highlighted.forEach(element => {
    element.classList.remove('highlight');
  });
}

// 显示书籍信息
function showBookInfo(bookTitle, event) {
  const tooltip = document.getElementById('bookTooltip');
  const bookInfo = bookDatabase[bookTitle];
  
  if (!bookInfo) return;
  
  // 更新tooltip内容
  document.getElementById('tooltipTitle').textContent = bookTitle;
  document.getElementById('tooltipAuthor').textContent = bookInfo.author;
  document.getElementById('tooltipYear').textContent = bookInfo.year;
  document.getElementById('tooltipCountry').textContent = bookInfo.country;
  document.getElementById('tooltipDescription').textContent = bookInfo.description;
  
  // 计算tooltip位置
  const rect = event.target.getBoundingClientRect();
  const tooltipRect = tooltip.getBoundingClientRect();
  
  let left = rect.left + rect.width / 2 - tooltipRect.width / 2;
  let top = rect.top - tooltipRect.height - 10;
  
  // 边界检查
  if (left < 10) left = 10;
  if (left + tooltipRect.width > window.innerWidth - 10) {
    left = window.innerWidth - tooltipRect.width - 10;
  }
  if (top < 10) {
    top = rect.bottom + 10;
  }
  
  tooltip.style.left = left + 'px';
  tooltip.style.top = top + 'px';
  tooltip.classList.add('show');
}

// 隐藏书籍信息
function hideBookInfo() {
  const tooltip = document.getElementById('bookTooltip');
  tooltip.classList.remove('show');
}

// 跳转到书籍详细页面
function goToBookDetail(bookTitle) {
  // 将书名转换为URL友好的格式
  const bookSlug = bookTitle.replace(/\s+/g, '-').replace(/[^\w\-\u4e00-\u9fa5]/g, '');
  window.location.href = `/book-detail/${bookSlug}/`;
}

// 初始化事件监听
document.addEventListener('DOMContentLoaded', function() {
  const searchInput = document.getElementById('searchInput');
  
  searchInput.addEventListener('keypress', function(e) {
    if (e.key === 'Enter') {
      searchBooks();
    }
  });
  
  // 隐藏可能存在的导航元素
  const header = document.querySelector('.site-header');
  const footer = document.querySelector('.site-footer');
  const nav = document.querySelector('nav');
  
  if (header) header.style.display = 'none';
  if (footer) footer.style.display = 'none';
  if (nav) nav.style.display = 'none';
  
  // 确保body没有滚动条
  document.body.style.overflow = 'hidden';
  document.documentElement.style.overflow = 'hidden';
  
  // 等待mermaid渲染完成后添加事件监听
  setTimeout(() => {
    const bookNodes = document.querySelectorAll('.mermaid text');
    bookNodes.forEach(node => {
      const text = node.textContent.trim();
      // 检查是否是书籍节点（包含书名）
      for (const bookTitle in bookDatabase) {
        if (text.includes(bookTitle)) {
          const parentNode = node.closest('g');
          if (parentNode) {
            parentNode.style.cursor = 'pointer';
            parentNode.addEventListener('mouseenter', (e) => showBookInfo(bookTitle, e));
            parentNode.addEventListener('mouseleave', hideBookInfo);
            // 添加点击事件
            parentNode.addEventListener('click', (e) => {
              e.preventDefault();
              goToBookDetail(bookTitle);
            });
          }
          break;
        }
      }
    });
  }, 2000);
});
</script> 