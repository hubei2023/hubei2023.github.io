---
layout: default
title: Web3
permalink: /web3/
---

<div class="category-page">
    <div class="category-header">
        <h1>Web3 探索</h1>
        <p class="subtitle">探索去中心化互联网的未来</p>
    </div>

    <div class="category-content">
        <div class="topic-grid">
            <div class="topic-card">
                <h3>区块链基础</h3>
                <p>了解区块链技术的核心原理和应用场景</p>
                <ul>
                    <li>区块链架构</li>
                    <li>共识机制</li>
                    <li>智能合约</li>
                    <li>密码学基础</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>DeFi</h3>
                <p>探索去中心化金融的创新与挑战</p>
                <ul>
                    <li>借贷协议</li>
                    <li>去中心化交易所</li>
                    <li>流动性挖矿</li>
                    <li>收益聚合器</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>NFT</h3>
                <p>非同质化代币的应用与发展</p>
                <ul>
                    <li>数字艺术</li>
                    <li>游戏资产</li>
                    <li>虚拟身份</li>
                    <li>知识产权</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>Web3 治理</h3>
                <p>去中心化组织的运作机制</p>
                <ul>
                    <li>DAO 结构</li>
                    <li>投票机制</li>
                    <li>激励机制</li>
                    <li>社区建设</li>
                </ul>
            </div>
        </div>

        <div class="posts-section">
            <h2>最新文章</h2>
            <div class="post-list">
                {% for post in site.posts %}
                    {% if post.categories contains 'web3' %}
                    <article class="post-preview">
                        <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
                        <div class="post-meta">
                            <time datetime="{{ post.date | date_to_xmlschema }}">
                                {{ post.date | date: "%Y年%m月%d日" }}
                            </time>
                        </div>
                        <div class="post-excerpt">
                            {{ post.excerpt | strip_html | truncatewords: 50 }}
                        </div>
                        <a href="{{ post.url | relative_url }}" class="read-more">阅读更多</a>
                    </article>
                    {% endif %}
                {% endfor %}
            </div>
        </div>
    </div>
</div>

<style>
.category-header {
    text-align: center;
    padding: 3rem 0;
    background-color: var(--primary-color);
    color: white;
    margin: -2rem -1rem 2rem -1rem;
}

.category-header h1 {
    font-size: 2.5rem;
    margin-bottom: 1rem;
}

.subtitle {
    font-size: 1.2rem;
    opacity: 0.9;
}

.topic-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
    margin-bottom: 3rem;
}

.topic-card {
    background-color: var(--blockquote-background);
    padding: 1.5rem;
    border-radius: 5px;
    transition: transform 0.3s ease;
}

.topic-card:hover {
    transform: translateY(-5px);
}

.topic-card h3 {
    color: var(--primary-color);
    margin-bottom: 1rem;
}

.topic-card ul {
    list-style: none;
    padding-left: 0;
    margin-top: 1rem;
}

.topic-card li {
    margin: 0.5rem 0;
    color: var(--secondary-color);
}

.posts-section {
    margin-top: 3rem;
}

@media (max-width: 600px) {
    .category-header {
        padding: 2rem 0;
    }

    .category-header h1 {
        font-size: 2rem;
    }

    .topic-grid {
        grid-template-columns: 1fr;
    }
}
</style> 