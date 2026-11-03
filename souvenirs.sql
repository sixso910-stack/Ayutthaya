CREATE DATABASE IF NOT EXISTS souvenirs_ayutthaya
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE souvenirs_ayutthaya;

CREATE TABLE IF NOT EXISTS souvenirs (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  slug VARCHAR(120) NOT NULL UNIQUE,
  name_th VARCHAR(255) NOT NULL,
  name_en VARCHAR(255) NOT NULL,
  category_th VARCHAR(120) NOT NULL,
  category_en VARCHAR(120) NOT NULL,
  description_th TEXT NOT NULL,
  description_en TEXT NOT NULL,
  image VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO souvenirs
(slug,name_th,name_en,category_th,category_en,description_th,description_en,image) VALUES
('roti-sai-mai','โรตีสายไหม','Roti Sai Mai','ขนมหวาน','Thai Desserts','ขนมขึ้นชื่อของอยุธยา ประกอบด้วยแป้งโรตีและสายไหม','A famous Ayutthaya treat made with roti and cotton candy.','roti-sai-mai.svg'),
('khanom-mo-kaeng','ขนมหม้อแกง','Khanom Mo Kaeng','ขนมหวาน','Thai Desserts','ขนมไทยเนื้อนุ่ม หอมไข่และกะทิ','A smooth Thai custard dessert with egg and coconut milk.','khanom-mo-kaeng.svg'),
('crispy-roti','โรตีกรอบ','Crispy Roti','ขนมขบเคี้ยว','Snacks','แผ่นแป้งบางทอดจนกรอบ รสหวานมัน','Thin pastry fried until crisp and sweet.','crispy-roti.svg'),
('banana-chips','กล้วยฉาบ','Banana Chips','อาหารแปรรูป','Local Snacks','กล้วยฝานบางทอดกรอบ ปรุงรสหวานหรือเค็ม','Thinly sliced bananas fried until crisp.','banana-chips.svg'),
('palm-sugar','น้ำตาลมะพร้าว','Palm Sugar','อาหารท้องถิ่น','Local Food','วัตถุดิบให้ความหวานที่นิยมใช้ในอาหารไทย','A traditional sweetener used in Thai cooking.','palm-sugar.svg'),
('pottery','เครื่องปั้นดินเผา','Traditional Pottery','งานหัตถกรรม','Handicrafts','ภาชนะและของตกแต่งจากดินเผา','Earthenware vessels and decorative pieces.','pottery.svg'),
('temple-miniature','ของที่ระลึกจำลองโบราณสถาน','Temple Miniatures','ของที่ระลึก','Keepsakes','ของที่ระลึกจำลองสถาปัตยกรรมวัดและโบราณสถาน','Miniature interpretations of temples and historic architecture.','temple-miniature.svg'),
('wooden-elephant','งานแกะสลักช้าง','Carved Wooden Elephant','งานหัตถกรรม','Handicrafts','งานแกะสลักรูปช้างสำหรับตกแต่งบ้าน','A carved elephant ornament for display or gifting.','wooden-elephant.svg'),
('woven-fabric','ผ้าทอพื้นเมือง','Traditional Woven Fabric','ผ้าและงานฝีมือ','Textiles','ผ้าทอสำหรับใช้เป็นผ้าพันคอหรือของตกแต่ง','Woven fabric for scarves and decorative use.','woven-fabric.svg'),
('herbal-products','ผลิตภัณฑ์สมุนไพรไทย','Thai Herbal Products','ผลิตภัณฑ์สมุนไพร','Herbal Products','ผลิตภัณฑ์สมุนไพร เช่น ยาหม่องและยาดม','Traditional herbal items such as balms and inhalers.','herbal-products.svg');
