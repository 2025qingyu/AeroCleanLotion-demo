<template>
  <div class="technology">
    <section class="technology-hero">
      <div class="container">
        <h1>清洗原理</h1>
        <p>先进的航空发动机清洗技术</p>
      </div>
    </section>

    <section class="technology-content">
      <div class="container">
        <div class="cleaning-principle">
          <h2>清洗方式介绍</h2>
          <div class="principle-image">
            <!-- 清洗原理示意图 -->
          </div>
          <div class="principle-text">
            <p>发动机气流速度在数倍音速，在发动机运转及专业清洗过程中，通过高压气流及清洗液的作用，将发动机内的污染物通过出口排出。</p>
            <p>清洗液通过发动机专业清洗设备的压力入口被导入进气道，在发动机内部进行循环清洗，彻底清除发动机内部的油污、积碳、粉尘等污染物，恢复发动机性能。</p>
          </div>
        </div>

        <div class="cleaning-methods">
          <h2>主要清洗方式</h2>
          <div class="methods-grid">
            <div class="method-item">
              <h3>喷雾式清洗</h3>
              <p>将清洗液通过高压喷雾系统均匀喷洒到发动机内部，利用高速气流带动清洗液流动，达到清洗效果。适用于发动机外部及进气道的清洗。</p>
            </div>
            <div class="method-item">
              <h3>浸泡式清洗</h3>
              <p>将零部件浸泡在清洗液中，通过超声波或机械搅拌等方式增强清洗效果。适用于发动机零部件的深度清洗。</p>
            </div>
            <div class="method-item">
              <h3>循环式清洗</h3>
              <p>通过专业设备使清洗液在发动机内部循环流动，彻底清除内部管路和部件的污染物。适用于发动机内部系统的清洗。</p>
            </div>
          </div>
        </div>

        <div class="cleaning-effects">
          <h2>清洗效果</h2>
          <div class="effects-grid">
            <div class="effect-item">
              <h3>提高燃油效率</h3>
              <p>清除发动机内部积碳和油污，减少气流阻力，提高燃油利用率，降低运营成本。</p>
            </div>
            <div class="effect-item">
              <h3>延长发动机寿命</h3>
              <p>减少零部件磨损，降低发动机工作温度，延长发动机使用寿命和维护周期。</p>
            </div>
            <div class="effect-item">
              <h3>提高可靠性</h3>
              <p>清除潜在故障隐患，提高发动机运行可靠性，保障飞行安全。</p>
            </div>
            <div class="effect-item">
              <h3>环保节能</h3>
              <p>使用水基环保清洗剂，减少对环境的污染，符合现代航空业的环保要求。</p>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Technology'
}
</script>

<style scoped>
.technology-hero {
  background-color: #0066cc;
  color: white;
  padding: 3rem 0;
  text-align: center;
}

.technology-hero h1 {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
}

.technology-content {
  padding: 5rem 0;
}

.cleaning-principle {
  margin-bottom: 4rem;
}

.cleaning-principle h2,
.cleaning-methods h2,
.cleaning-effects h2 {
  font-size: 2rem;
  margin-bottom: 2rem;
  color: #003366;
  text-align: center;
}

.principle-image {
  background-color: #e9ecef;
  background-image: url('/src/assets/images/原理展示.png');
  background-size: cover;
  border-radius: 8px;
  height: 300px;
  margin-bottom: 2rem;
}

.principle-text p {
  font-size: 1.1rem;
  line-height: 1.8;
  margin-bottom: 1.5rem;
  color: #666;
  text-align: center;
}

.methods-grid,
.effects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
}

.method-item,
.effect-item {
  background-color: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s, box-shadow 0.3s;
}

.method-item:hover,
.effect-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
}

.method-item h3,
.effect-item h3 {
  font-size: 1.3rem;
  margin-bottom: 1rem;
  color: #003366;
  text-align: center;
}

.method-item p,
.effect-item p {
  line-height: 1.8;
  color: #666;
  text-align: center;
}

@media (max-width: 768px) {
  .technology-hero h1 {
    font-size: 2rem;
  }
  
  .cleaning-principle h2,
  .cleaning-methods h2,
  .cleaning-effects h2 {
    font-size: 1.8rem;
  }
  
  .methods-grid,
  .effects-grid {
    grid-template-columns: 1fr;
  }
}
</style>