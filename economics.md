---
layout: default
title: 经济学
permalink: /economics/
---

<div class="category-page">
    <div class="category-header">
        <h1>经济学探索</h1>
        <p class="subtitle">探索经济运行的规律</p>
    </div>

    <div class="category-content">
        <div class="topic-grid">
            <div class="topic-card">
                <h3>微观经济学</h3>
                <p>研究个体经济行为</p>
                <ul>
                    <li>供需理论</li>
                    <li>消费者行为</li>
                    <li>生产者理论</li>
                    <li>市场结构</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>宏观经济学</h3>
                <p>研究整体经济运行</p>
                <ul>
                    <li>国民收入</li>
                    <li>通货膨胀</li>
                    <li>货币政策</li>
                    <li>经济增长</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>行为经济学</h3>
                <p>探索经济决策心理</p>
                <ul>
                    <li>有限理性</li>
                    <li>前景理论</li>
                    <li>心理账户</li>
                    <li>社会偏好</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>发展经济学</h3>
                <p>研究经济发展问题</p>
                <ul>
                    <li>贫困问题</li>
                    <li>收入分配</li>
                    <li>制度变迁</li>
                    <li>可持续发展</li>
                </ul>
            </div>
        </div>

        <div class="posts-section">
            <h2>最新文章</h2>
            <div class="post-list">
                {% for post in site.posts %}
                    {% if post.categories contains '经济学' %}
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