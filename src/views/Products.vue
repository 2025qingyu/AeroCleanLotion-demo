<template>
  <div class="products">
    <section class="products-hero">
      <div class="container">
        <h1>产品介绍</h1>
        <p>AeroX航空水基清洗剂系列</p>
      </div>
    </section>

    <section class="products-content">
      <div class="container">
        <div class="product-detail" v-for="product in products" :key="product.id">
          <div class="product-header">
            <h2>{{ product.name }}</h2>
            <span class="product-code">{{ product.code }}</span>
          </div>
          <div class="product-info">
            <div class="product-image">
              <img :src="product.image" :alt="product.name">
            </div>
            <div class="product-specs">
              <div class="spec-item">
                <h3>应用领域</h3>
                <p>{{ product.application }}</p>
              </div>
              <div class="spec-item">
                <h3>产品特点</h3>
                <ul>
                  <li v-for="feature in product.features" :key="feature">{{ feature }}</li>
                </ul>
              </div>
              <div class="spec-item">
                <h3>清洗方式</h3>
                <p>{{ product.cleaningMethod }}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Products',
  data() {
    return {
      products: [
        {
          id: 1,
          name: '航空水基清洗剂',
          code: 'AEROX-716',
          image: '/src/assets/images/12.png',
          application: '燃油喷嘴腔，重质附着物的清洗',
          features: [
            '本品采用活性剂浊点梯度配方设计，将不同独点的非离子活性剂进行增溶',
            '产生梯度效应，适合宽温度范围内重质油',
            '重质积碳清洗，与各种材质相容性良好',
            '清洗后无残留，对零部件无腐蚀或损伤'          ],
          cleaningMethod: '浸泡、超声、喷淋'
        },
        {
          id: 2,
          name: '航空水基清洗剂',
          code: 'AEROX-816A',
          image: '/src/assets/images/12.png',
          application: '涡扇，涡轴，无人机，燃气轮机等发动机气流通道的在翼清洗',
          features: [
            '本品采用多电荷胶体结构助洗剂，复合表面活性剂，嵌段聚醚复配技术',
            '具有浸润，分散，去污，高洁净性能',
            '能有效去除压气机叶片，导向器叶片，转子和气流通道上的沉积物，黑烟，油清，盐清，胶质等污物',
            '使用安全；与各种材质相容性良好，对零件无腐蚀或损伤，适合发动机在翼清洗'          ],
          cleaningMethod: '在翼清洗'
        },
        {
          id: 3,
          name: '航空水基清洗剂',
          code: 'AEROX-816B',
          image: '/src/assets/images/12.png',
          application: '适用于航空零部件制造、维修、使用过程中的清洗',
          features: [
            '本品采用活性剂的复配技术，将非离子表面活性剂与阴阳离子表面活性有机结合',
            '适合航空器制造，维修，使用过程中零部件表面油污，积碳等附着物的清洗',
            '与各种材质相容性良好',
            '对零件无腐蚀或损伤'          ],
          cleaningMethod: '浸泡、超声、喷淋'
        },
        {
          id: 4,
          name: '航空水基清洗剂',
          code: 'AEROX-816C',
          image: '/src/assets/images/12.png',
          application: '适用于汽车，高铁，船舶等产品的清洗',
          features: [
            '本品采用活性剂的复配技术，不含钠，钾，强酸，强碱，卤族元素等',
            '适合汽车，高铁和船舶油污，积碳等附着物的清洗',
            '与各种材质相容性良好，对零件无腐蚀或损伤',
            '安全可靠，使用方便'          ],
          cleaningMethod: '浸泡、超声、喷洗'
        }
      ]
    }
  }
}
</script>

<style scoped>
.products-hero {
  background-color: #0066cc;
  color: white;
  padding: 3rem 0;
  text-align: center;
}

.products-hero h1 {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
}

.products-content {
  padding: 5rem 0;
}

.product-detail {
  margin-bottom: 4rem;
  padding: 2rem;
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.product-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 2rem;
  padding-bottom: 1rem;
  border-bottom: 2px solid #0066cc;
}

.product-header h2 {
  font-size: 2rem;
  color: #003366;
}

.product-code {
  font-size: 1.5rem;
  font-weight: bold;
  color: #0066cc;
}

.product-info {
  display: grid;
  grid-template-columns: 1fr 2fr;
  gap: 3rem;
  align-items: start;
}

.product-image {
  background-color: #e9ecef;
  border-radius: 8px;
  overflow: hidden;
  height: 300px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.product-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.product-specs {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.spec-item h3 {
  font-size: 1.3rem;
  margin-bottom: 1rem;
  color: #003366;
}

.spec-item p {
  line-height: 1.8;
  color: #666;
}

.spec-item ul {
  list-style-type: disc;
  padding-left: 2rem;
  color: #666;
}

.spec-item li {
  margin-bottom: 0.5rem;
  line-height: 1.6;
}

@media (max-width: 768px) {
  .products-hero h1 {
    font-size: 2rem;
  }
  
  .product-header {
    flex-direction: column;
    align-items: flex-start;
    gap: 1rem;
  }
  
  .product-info {
    grid-template-columns: 1fr;
  }
  
  .product-header h2 {
    font-size: 1.8rem;
  }
}
</style>