<template>
  <footer class="footer">
    <div class="container">
      <div class="footer-content">
        <div class="footer-logo">
          <!-- <img src="../assets/images/logo.png" alt="AeroX Logo"> -->
          <p>成都青宇创新科技有限公司</p>
        </div>
        <div class="footer-links">
          <h4>快速链接</h4>
          <ul>
            <li><router-link to="/">首页</router-link></li>
            <li><router-link to="/about">公司简介</router-link></li>
            <li><router-link to="/products">产品介绍</router-link></li>
            <li><router-link to="/technology">清洗原理</router-link></li>
            <li><router-link to="/application">应用背景</router-link></li>
            <li><router-link to="/contact">联系我们</router-link></li>
          </ul>
        </div>
        <div class="footer-contact">
          <h4>联系我们</h4>
          <p>电话：189-8086-1913</p>
          <p>邮箱：info@aerox.net.cn</p>
          <p>地址：成都市高新区九兴大道3号附1号7栋</p>
        </div>
      </div>
      <div class="footer-bottom">
        <p>&copy; {{ new Date().getFullYear() }} 成都青宇创新科技有限公司. 保留所有权利.</p>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'Footer'
}
</script>

<style scoped>
.footer {
  background-color: #003366;
  color: white;
  padding: 3rem 0 1rem;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

.footer-content {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
  margin-bottom: 2rem;
}

.footer-logo {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}

.footer-logo img {
  width: 60px;
  height: 60px;
  margin-bottom: 1rem;
}

.footer-links h4, .footer-contact h4 {
  margin-bottom: 1rem;
  font-size: 1.2rem;
}

.footer-links ul {
  list-style: none;
}

.footer-links li {
  margin-bottom: 0.5rem;
}

.footer-links a {
  color: white;
  text-decoration: none;
  transition: color 0.3s;
}

.footer-links a:hover {
  color: #ffd700;
}

.footer-contact p {
  margin-bottom: 0.5rem;
}

.footer-bottom {
  text-align: center;
  padding-top: 2rem;
  border-top: 1px solid #004499;
}

@media (max-width: 768px) {
  .footer-content {
    grid-template-columns: 1fr;
    text-align: center;
  }
  
  .footer-logo {
    align-items: center;
  }
}
</style>