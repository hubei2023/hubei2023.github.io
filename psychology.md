---
layout: default
title: 心理学
permalink: /psychology/
---

<div class="category-page">
    <div class="category-header">
        <h1>心理学探索</h1>
        <p class="subtitle">探索人类心理的奥秘</p>
    </div>

    <div class="category-content">
        <div class="topic-grid">
            <div class="topic-card">
                <h3>认知心理学</h3>
                <p>研究人类思维和认知过程</p>
                <ul>
                    <li>注意力与记忆</li>
                    <li>学习与决策</li>
                    <li>语言与思维</li>
                    <li>问题解决</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>社会心理学</h3>
                <p>探索人际互动与群体行为</p>
                <ul>
                    <li>态度与行为</li>
                    <li>群体动力</li>
                    <li>社会认知</li>
                    <li>人际关系</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>发展心理学</h3>
                <p>研究人类心理发展过程</p>
                <ul>
                    <li>儿童发展</li>
                    <li>青少年心理</li>
                    <li>成年发展</li>
                    <li>老年心理</li>
                </ul>
            </div>
            <div class="topic-card">
                <h3>应用心理学</h3>
                <p>心理学在实际中的应用</p>
                <ul>
                    <li>教育心理学</li>
                    <li>工业心理学</li>
                    <li>临床心理学</li>
                    <li>健康心理学</li>
                </ul>
            </div>
        </div>

        <div class="posts-section">
            <h2>最新文章</h2>
            <div class="post-list">
                {% for post in site.posts %}
                    {% if post.categories contains '心理学' %}
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