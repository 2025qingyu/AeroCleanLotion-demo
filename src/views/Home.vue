<template>
  <div class="home">
    <!-- 英雄区域 -->
    <section class="hero">
      <div class="hero-content">
        <h1>AeroX航空水基清洗剂</h1>
        <p>AEROX AVIATION WATER-BASED CLEANER</p>
        <router-link to="/products" class="btn btn-primary">了解产品</router-link>
      </div>
      <div class="hero-bg">
        <!-- 这里可以使用CSS背景图或者实际图片 -->
      </div>
    </section>

    <!-- 产品优势 -->
    <section class="features">
      <div class="container">
        <h2 class="section-title">产品优势</h2>
        <div class="features-grid">
          <div class="feature-item">
            <div class="feature-icon">
              <svg width="48" height="48" viewBox="0 0 48 48">
                <path d="M24 4L4 14v20l20 10 20-10V14L24 4zm0 36L8 30V18l16-8 16 8v12l-16 8z" fill="#0066cc" />
              </svg>
            </div>
            <h3>环保配方</h3>
            <p>采用水基环保配方，不含氯、磷、苯等有害物质，对环境友好</p>
          </div>
          <div class="feature-item">
            <div class="feature-icon">
              <svg width="48" height="48" viewBox="0 0 48 48">
                <path d="M24 4L4 14v20l20 10 20-10V14L24 4zm0 36L8 30V18l16-8 16 8v12l-16 8z" fill="#0066cc" />
              </svg>
            </div>
            <h3>高效清洗</h3>
            <p>快速去除油污、粉尘、金属颗粒等污染物，清洗效果显著</p>
          </div>
          <div class="feature-item">
            <div class="feature-icon">
              <svg width="48" height="48" viewBox="0 0 48 48">
                <path d="M24 4L4 14v20l20 10 20-10V14L24 4zm0 36L8 30V18l16-8 16 8v12l-16 8z" fill="#0066cc" />
              </svg>
            </div>
            <h3>安全可靠</h3>
            <p>对各种材料相容性好，不会对零部件造成腐蚀或损伤</p>
          </div>
        </div>
      </div>
    </section>

    <!-- 产品展示 -->
    <section class="products-preview">
      <div class="container">
        <h2 class="section-title">主要产品</h2>
        <div class="products-grid">
          <div class="product-card" v-for="product in products" :key="product.id">
            <div class="product-image">
              <img :src="product.image" :alt="product.name">
            </div>
            <div class="product-info">
              <h3>{{ product.name }}</h3>
              <p>{{ product.description }}</p>
              <router-link to="/products" class="btn btn-secondary">查看详情</router-link>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 清洗原理简介 -->
    <section class="technology-preview">
      <div class="container">
        <h2 class="section-title">清洗原理</h2>
        <div class="technology-content">
          <div class="technology-image">
            <!-- 清洗原理图片 -->
          </div>
          <div class="technology-text">
            <h3>清洗方式介绍</h3>
            <p>发动机气流速度在数倍音速，在发动机运转及专业清洗过程中，通过高压气流及清洗液的作用，将发动机内的污染物通过出口排出。常用清洗工艺包括喷雾式和浸泡式，使清洗液充分渗透到发动机内部，实现彻底清洗效果。</p>
            <router-link to="/technology" class="btn btn-primary">了解更多</router-link>
          </div>
        </div>
      </div>
    </section>

    <!-- 联系信息 -->
    <section class="contact-info">
      <div class="container">
        <div class="contact-grid">
          <div class="contact-item">
            <h3>公司名称</h3>
            <p>成都青宇创新科技有限公司</p>
          </div>
          <div class="contact-item">
            <h3>联系方式</h3>
            <p>电话：189-8086-1913</p>
            <p>邮箱：info@aerox.net.cn</p>
          </div>
          <div class="contact-item">
            <h3>公司地址</h3>
            <p>成都市高新区九兴大道3号附1号7栋</p>
          </div>
          <div class="contact-item">
            <h3>官方网站</h3>
            <p>www.aerox.net.cn</p>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Home',
  data() {
    return {
      products: [
        {
          id: 1,
          name: 'AEROX-716',
          description: '航空水基清洗剂',
          image: '/src/assets/images/12.png'
        },
        {
          id: 2,
          name: 'AEROX-816A',
          description: '航空水基清洗剂',
          image: '/src/assets/images/12.png'
        },
        {
          id: 3,
          name: 'AEROX-816B',
          description: '航空水基清洗剂',
          image: '/src/assets/images/12.png'
        },
        {
          id: 4,
          name: 'AEROX-816C',
          description: '航空水基清洗剂',
          image: '/src/assets/images/12.png'
        }
      ]
    }
  }
}
</script>

<style scoped>
/* 英雄区域 */
.hero {
  height: 80vh;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  background-color: #0066cc;
  overflow: hidden;
}

.hero-content {
  text-align: center;
  color: white;
  z-index: 1;
  max-width: 800px;
  padding: 0 20px;
}

.hero-content h1 {
  font-size: 3.5rem;
  margin-bottom: 1rem;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

.hero-content p {
  font-size: 1.5rem;
  margin-bottom: 2rem;
  text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
}

.hero-bg {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  /* background: linear-gradient(rgba(0, 102, 204, 0.8), rgba(0, 102, 204, 0.8)), 
              url('../assets/images/engine-bg.jpg') center/cover; */
  background-image: url('../assets/images/2.jpg');
  background-size: cover;
  /* 让图片完全覆盖容器，保持宽高比 */
  background-position: center;
  /* 图片居中显示 */
  background-repeat: no-repeat;
  /* 不重复平铺 */
  opacity: 0.8;
}

/* 按钮样式 */
.btn {
  display: inline-block;
  padding: 12px 30px;
  border-radius: 4px;
  text-decoration: none;
  font-weight: 500;
  transition: all 0.3s;
  border: none;
  cursor: pointer;
}

.btn-primary {
  background-color: #ffd700;
  color: #003366;
}

.btn-primary:hover {
  background-color: #ffcc00;
  transform: translateY(-2px);
}

.btn-secondary {
  background-color: transparent;
  color: #0066cc;
  border: 2px solid #0066cc;
}

.btn-secondary:hover {
  background-color: #0066cc;
  color: white;
}

/* 产品优势 */
.features {
  padding: 5rem 0;
  background-color: #f8f9fa;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

.section-title {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 3rem;
  color: #003366;
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
}

.feature-item {
  background-color: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  text-align: center;
  transition: transform 0.3s, box-shadow 0.3s;
}

.feature-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
}

.feature-icon {
  margin-bottom: 1.5rem;
}

.feature-item h3 {
  font-size: 1.5rem;
  margin-bottom: 1rem;
  color: #003366;
}

/* 产品展示 */
.products-preview {
  padding: 5rem 0;
}

.products-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
}

.product-card {
  background-color: white;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s, box-shadow 0.3s;
}

.product-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
}

.product-image {
  height: 220px;
  background-color: #e9ecef;
  display: flex;
  align-items: center;
  justify-content: center;
}

.product-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.product-info {
  padding: 1.5rem;
  text-align: center;
}

.product-info h3 {
  font-size: 1.3rem;
  margin-bottom: 0.5rem;
  color: #003366;
}

.product-info p {
  margin-bottom: 1rem;
  color: #666;
}

/* 清洗原理简介 */
.technology-preview {
  padding: 5rem 0;
  background-color: #f8f9fa;
}

.technology-content {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 3rem;
  align-items: center;
}

.technology-image {
  height: 300px;
  background-color: #e9ecef;
  background-image: url('../assets/images/原理展示.png');
  background-size: cover;
  /* 让图片完全覆盖容器，保持宽高比 */
  background-position: center;
  /* 图片居中显示 */
  background-repeat: no-repeat;
  /* 不重复平铺 */
  border-radius: 8px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.technology-text h3 {
  font-size: 2rem;
  margin-bottom: 1.5rem;
  color: #003366;
}

.technology-text p {
  font-size: 1.1rem;
  line-height: 1.8;
  margin-bottom: 2rem;
  color: #666;
}

/* 联系信息 */
.contact-info {
  padding: 5rem 0;
  background-color: #0066cc;
  color: white;
}

.contact-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 2rem;
  text-align: center;
}

.contact-item h3 {
  font-size: 1.3rem;
  margin-bottom: 1rem;
}

/* 响应式设计 */
@media (max-width: 768px) {
  .hero-content h1 {
    font-size: 2.5rem;
  }

  .hero-content p {
    font-size: 1.2rem;
  }

  .section-title {
    font-size: 2rem;
  }

  .technology-content {
    grid-template-columns: 1fr;
  }

  .features-grid,
  .products-grid,
  .contact-grid {
    grid-template-columns: 1fr;
  }
}
</style>