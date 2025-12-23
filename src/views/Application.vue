<template>
  <div class="application">
    <section class="application-hero">
      <div class="container">
        <h1>应用背景</h1>
        <p>航空水基清洗剂的应用场景与重要性</p>
      </div>
    </section>

    <section class="application-content">
      <div class="container">
        <div class="background-info">
          <h2>应用场景</h2>
          <p>随着航空运输业的快速发展，飞机发动机的维护保养变得越来越重要。发动机在高空高速运行过程中，会积累大量的油污、碳化物、灰尘等污染物，这些污染物会影响发动机的性能和寿命。</p>
          <p>AeroX航空水基清洗剂广泛应用于以下领域：</p>
          <ul>
            <li>商用航空发动机清洗</li>
            <li>军用航空发动机维护</li>
            <li>直升机发动机保养</li>
            <li>燃气涡轮发动机清洁</li>
            <li>航空零部件制造与维修</li>
          </ul>
        </div>

        <div class="importance">
          <h2>清洗的重要性</h2>
          <div class="importance-grid">
            <div class="importance-item">
              <h3>提高燃油效率</h3>
              <p>发动机内部的积碳和油污会增加气流阻力，导致燃油消耗增加。定期清洗可以提高燃油效率5-10%。</p>
            </div>
            <div class="importance-item">
              <h3>延长发动机寿命</h3>
              <p>污染物会导致发动机部件磨损加剧，定期清洗可以减少磨损，延长发动机使用寿命30%以上。</p>
            </div>
            <div class="importance-item">
              <h3>降低维护成本</h3>
              <p>定期清洗可以减少发动机大修次数，降低维护成本和停机时间。</p>
            </div>
            <div class="importance-item">
              <h3>保障飞行安全</h3>
              <p>清洁的发动机运行更稳定，减少故障发生，保障飞行安全。</p>
            </div>
          </div>
        </div>

        <div class="testimonials">
          <h2>客户案例</h2>
          <div class="testimonial-item">
            <blockquote>
              <p>AeroX航空水基清洗剂为我们的发动机维护提供了高效、环保的解决方案。使用后，发动机燃油效率提高了8%，维护周期延长了35%。</p>
              <footer>- 某航空公司技术总监</footer>
            </blockquote>
          </div>
          <div class="testimonial-item">
            <blockquote>
              <p>作为一家航空零部件制造商，我们需要高质量的清洗剂。AeroX系列产品不仅清洁效果出色，而且对我们的精密部件无任何腐蚀，非常满意。</p>
              <footer>- 某航空零部件制造企业</footer>
            </blockquote>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Application'
}
</script>

<style scoped>
.application-hero {
  background-color: #0066cc;
  color: white;
  padding: 3rem 0;
  text-align: center;
}

.application-hero h1 {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
}

.application-content {
  padding: 5rem 0;
}

.background-info {
  margin-bottom: 4rem;
}

.importance {
  margin-bottom: 4rem;
}

.background-info h2,
.importance h2,
.testimonials h2 {
  font-size: 2rem;
  margin-bottom: 2rem;
  color: #003366;
  text-align: center;
}

.background-info p {
  font-size: 1.1rem;
  line-height: 1.8;
  margin-bottom: 1.5rem;
  color: #666;
}

.background-info ul {
  list-style-type: disc;
  padding-left: 2rem;
  font-size: 1.1rem;
  color: #666;
}

.background-info li {
  margin-bottom: 0.8rem;
  line-height: 1.6;
}

.importance-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
  margin-top: 3rem;
}

.importance-item {
  background-color: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s, box-shadow 0.3s;
}

.importance-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
}

.importance-item h3 {
  font-size: 1.3rem;
  margin-bottom: 1rem;
  color: #003366;
  text-align: center;
}

.importance-item p {
  line-height: 1.8;
  color: #666;
  text-align: center;
}

.testimonials {
  background-color: #f8f9fa;
  padding: 3rem;
  border-radius: 8px;
}

.testimonial-item {
  margin-bottom: 2rem;
  padding: 2rem;
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.testimonial-item:last-child {
  margin-bottom: 0;
}

.testimonial-item blockquote {
  font-style: italic;
  color: #666;
  line-height: 1.8;
  margin-bottom: 1rem;
}

.testimonial-item footer {
  text-align: right;
  font-weight: bold;
  color: #0066cc;
}

@media (max-width: 768px) {
  .application-hero h1 {
    font-size: 2rem;
  }
  
  .background-info h2,
  .importance h2,
  .testimonials h2 {
    font-size: 1.8rem;
  }
  
  .importance-grid {
    grid-template-columns: 1fr;
  }
  
  .testimonials {
    padding: 2rem;
  }
}
</style>