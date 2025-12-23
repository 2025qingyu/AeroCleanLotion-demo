<template>
  <header class="header">
    <div class="container">
      <div class="logo">
        <!-- <img src="" alt="AeroX Logo"> -->
        <span>AeroX航空水基清洗剂</span>
      </div>
      <nav class="nav">
        <ul>
          <li><router-link to="/" :class="{ active: $route.path === '/' }">首页</router-link></li>
          <li><router-link to="/about" :class="{ active: $route.path === '/about' }">公司简介</router-link></li>
          <li><router-link to="/products" :class="{ active: $route.path === '/products' }">产品介绍</router-link></li>
          <li><router-link to="/technology" :class="{ active: $route.path === '/technology' }">清洗原理</router-link></li>
          <li><router-link to="/application" :class="{ active: $route.path === '/application' }">应用背景</router-link></li>
          <li><router-link to="/contact" :class="{ active: $route.path === '/contact' }">联系我们</router-link></li>
        </ul>
      </nav>
      <div class="menu-toggle" @click="toggleMenu">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
    <!-- 移动端菜单 -->
    <div class="mobile-menu" v-if="showMobileMenu">
      <ul>
        <li><router-link to="/" @click="toggleMenu" :class="{ active: $route.path === '/' }">首页</router-link></li>
        <li><router-link to="/about" @click="toggleMenu" :class="{ active: $route.path === '/about' }">公司简介</router-link></li>
        <li><router-link to="/products" @click="toggleMenu" :class="{ active: $route.path === '/products' }">产品介绍</router-link></li>
        <li><router-link to="/technology" @click="toggleMenu" :class="{ active: $route.path === '/technology' }">清洗原理</router-link></li>
        <li><router-link to="/application" @click="toggleMenu" :class="{ active: $route.path === '/application' }">应用背景</router-link></li>
        <li><router-link to="/contact" @click="toggleMenu" :class="{ active: $route.path === '/contact' }">联系我们</router-link></li>
      </ul>
    </div>
  </header>
</template>

<script>
export default {
  name: 'Header',
  data() {
    return {
      showMobileMenu: false
    }
  },
  methods: {
    toggleMenu() {
      this.showMobileMenu = !this.showMobileMenu
    }
  }
}
</script>

<style scoped>
.header {
  background-color: #0066cc;
  color: white;
  padding: 1rem 0;
  position: relative;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.logo {
  display: flex;
  align-items: center;
  font-size: 1.5rem;
  font-weight: 700;
}

.logo img {
  width: 50px;
  height: 50px;
  margin-right: 10px;
}

.nav ul {
  display: flex;
  list-style: none;
  gap: 2rem;
}

.nav a {
  color: white;
  text-decoration: none;
  font-weight: 500;
  transition: color 0.3s;
}

.nav a:hover, .nav a.active {
  color: #ffd700;
}

.menu-toggle {
  display: none;
  flex-direction: column;
  cursor: pointer;
}

.menu-toggle span {
  width: 25px;
  height: 3px;
  background-color: white;
  margin: 3px 0;
}

.mobile-menu {
  position: absolute;
  top: 100%;
  left: 0;
  width: 100%;
  background-color: #0066cc;
  padding: 1rem 0;
  display: none;
}

.mobile-menu ul {
  list-style: none;
  text-align: center;
}

.mobile-menu li {
  margin: 1rem 0;
}

.mobile-menu a {
  color: white;
  text-decoration: none;
  font-weight: 500;
}

.mobile-menu a.active {
  color: #ffd700;
}

@media (max-width: 768px) {
  .nav {
    display: none;
  }
  
  .menu-toggle {
    display: flex;
  }
  
  .mobile-menu {
    display: block;
  }
  
  .logo {
    font-size: 1.2rem;
  }
  
  .logo img {
    width: 40px;
    height: 40px;
  }
}
</style>