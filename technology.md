---
layout: default
title: 技术
permalink: /technology/
---

<div class="category-page">
    <div class="category-header">
        <h1>技术探索</h1>
        <p class="subtitle">探索技术的无限可能</p>
    </div>

    <div class="category-content">
        <div class="topic-grid">
            <div class="topic-card">
                <h3>前端开发</h3>
                <p>探索用户界面的构建艺术</p>
                <ul>
                    <li>HTML/CSS/JavaScript</li>
                    <li>前端框架（React/Vue/Angular）</li>
                    <li>响应式设计</li>
                    <li>性能优化</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>后端开发</h3>
                <p>构建强大的服务器端应用</p>
                <ul>
                    <li>服务器架构</li>
                    <li>数据库设计</li>
                    <li>API开发</li>
                    <li>系统安全</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>人工智能</h3>
                <p>探索AI的无限可能</p>
                <ul>
                    <li>机器学习</li>
                    <li>深度学习</li>
                    <li>自然语言处理</li>
                    <li>计算机视觉</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>云计算</h3>
                <p>云端技术的应用与发展</p>
                <ul>
                    <li>云服务架构</li>
                    <li>容器技术</li>
                    <li>微服务</li>
                    <li>DevOps</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>移动开发</h3>
                <p>移动应用开发技术</p>
                <ul>
                    <li>iOS开发</li>
                    <li>Android开发</li>
                    <li>跨平台开发</li>
                    <li>移动UI/UX</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>区块链</h3>
                <p>分布式账本技术</p>
                <ul>
                    <li>智能合约</li>
                    <li>共识机制</li>
                    <li>DApp开发</li>
                    <li>区块链安全</li>
                </ul>
            </div>
        </div>

        <div class="posts-section">
            <h2>最新文章</h2>
            <div class="post-list">
                {% for post in site.posts %}
                    {% if post.categories contains '技术' %}
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