<template>
  <div class="about">
    <section class="about-hero">
      <div class="container">
        <h1>公司简介</h1>
        <p>成都青宇创新科技有限公司</p>
      </div>
    </section>

    <section class="about-content">
      <div class="container">
        <div class="about-grid">
          <div class="about-text">
            <h2>公司概况</h2>
            <p>成都青宇创新科技有限公司自成立以来，始终坚持以人为本，科技创新的经营理念，以创新技术，服务航空，航天，船舶，兵器等领域为使命，推动企业制造及维修环节的降本增效；实施建立集研发，生产，销售为一体的创新科技型企业。
            </p>
            <p>成都青宇创新科技依托航空航天发展机遇，聚焦相关产业设备与技术的研发与制造，创造较好的社会与企业效益。</p>
          </div>
          <div class="about-image">
            <!-- 公司图片 -->
          </div>
        </div>

        <div class="company-info">
          <h2>资质认证</h2>
          <div class="certifications">
            <div class="cert-item">
              <h3>标准认证</h3>
              <!-- <p>GB/T 19001-2016/ISO 9001:2015</p> -->
              <p>按Q/QYJ0101.001-2025,Q/QYJ0101.002-2025
                标准研制</p>
            </div>
            <div class="cert-item">
              <h3>航空认证</h3>
              <p>航空航天行业标准认证</p>
            </div>
            <div class="cert-item">
              <h3>环保认证</h3>
              <p>环境管理体系认证</p>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'About'
}
</script>

<style scoped>
.about-hero {
  background-color: #0066cc;
  color: white;
  padding: 3rem 0;
  text-align: center;
}

.about-hero h1 {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
}

.about-hero p {
  font-size: 1.2rem;
}

.about-content {
  padding: 5rem 0;
}

.about-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 3rem;
  margin-bottom: 4rem;
  align-items: center;
}

.about-text h2 {
  font-size: 2rem;
  margin-bottom: 1.5rem;
  color: #003366;
}

.about-text p {
  font-size: 1.1rem;
  line-height: 1.8;
  margin-bottom: 1.5rem;
  color: #666;
}

.about-image {
  height: 400px;
  background-color: #e9ecef;
  background-image: url('/src/assets/images/5.jpg');
  background-size: cover;
  border-radius: 8px;
}

.company-info h2 {
  font-size: 2rem;
  margin-bottom: 2rem;
  text-align: center;
  color: #003366;
}

.certifications {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
}

.cert-item {
  background-color: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  text-align: center;
}

.cert-item h3 {
  font-size: 1.3rem;
  margin-bottom: 1rem;
  color: #003366;
}

@media (max-width: 768px) {
  .about-grid {
    grid-template-columns: 1fr;
  }

  .about-hero h1 {
    font-size: 2rem;
  }

  .about-text h2,
  .company-info h2 {
    font-size: 1.8rem;
  }
}
</style>