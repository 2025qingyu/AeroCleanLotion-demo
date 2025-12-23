<template>
  <div class="contact">
    <section class="contact-hero">
      <div class="container">
        <h1>联系我们</h1>
        <p>随时为您提供专业的咨询和服务</p>
      </div>
    </section>

    <section class="contact-content">
      <div class="container">
        <div class="contact-info">
          <div class="contact-details">
            <h2>联系信息</h2>
            <div class="detail-item">
              <h3>公司地址</h3>
              <p>成都市高新区九兴大道3号附1号7栋</p>
            </div>
            <div class="detail-item">
              <h3>联系电话</h3>
              <p>189-8086-1913</p>
            </div>
            <div class="detail-item">
              <h3>电子邮箱</h3>
              <p>contact@aeroxtech.com</p>
            </div>
            <div class="detail-item">
              <h3>官方网站</h3>
              <p>www.aeroxtech.com</p>
            </div>
          </div>
          
          <div class="contact-form">
            <h2>留言咨询</h2>
            <form @submit.prevent="submitForm">
              <div class="form-group">
                <label for="name">姓名</label>
                <input type="text" id="name" v-model="form.name" required>
              </div>
              <div class="form-group">
                <label for="email">邮箱</label>
                <input type="email" id="email" v-model="form.email" required>
              </div>
              <div class="form-group">
                <label for="phone">电话</label>
                <input type="tel" id="phone" v-model="form.phone">
              </div>
              <div class="form-group">
                <label for="message">留言内容</label>
                <textarea id="message" v-model="form.message" rows="5" required></textarea>
              </div>
              <button type="submit" class="submit-btn">提交留言</button>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Contact',
  data() {
    return {
      form: {
        name: '',
        email: '',
        phone: '',
        message: ''
      }
    }
  },
  methods: {
    submitForm() {
      // 这里可以添加表单提交逻辑
      alert('留言已提交，我们将尽快与您联系！');
      // 重置表单
      this.form = {
        name: '',
        email: '',
        phone: '',
        message: ''
      };
    }
  }
}
</script>

<style scoped>
.contact-hero {
  background-color: #0066cc;
  color: white;
  padding: 3rem 0;
  text-align: center;
}

.contact-hero h1 {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
}

.contact-content {
  padding: 5rem 0;
}

.contact-info {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: start;
}

.contact-details h2,
.contact-form h2 {
  font-size: 2rem;
  margin-bottom: 2rem;
  color: #003366;
}

.detail-item {
  margin-bottom: 2rem;
}

.detail-item h3 {
  font-size: 1.3rem;
  margin-bottom: 0.5rem;
  color: #0066cc;
}

.detail-item p {
  color: #666;
  line-height: 1.6;
}

.contact-form form {
  background-color: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.form-group {
  margin-bottom: 1.5rem;
}

.form-group label {
  display: block;
  margin-bottom: 0.5rem;
  font-weight: bold;
  color: #003366;
}

.form-group input,
.form-group textarea {
  width: 100%;
  padding: 0.8rem;
  border: 1px solid #ddd;
  border-radius: 4px;
  font-size: 1rem;
}

.form-group textarea {
  resize: vertical;
}

.submit-btn {
  background-color: #0066cc;
  color: white;
  border: none;
  padding: 1rem 2rem;
  font-size: 1.1rem;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s;
  width: 100%;
}

.submit-btn:hover {
  background-color: #0052a3;
}

@media (max-width: 768px) {
  .contact-hero h1 {
    font-size: 2rem;
  }
  
  .contact-info {
    grid-template-columns: 1fr;
  }
  
  .contact-details h2,
  .contact-form h2 {
    font-size: 1.8rem;
  }
}
</style>