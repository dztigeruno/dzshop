-- POTI PATI E-commerce Demo Products
-- 20 Products across different categories

-- Insert demo categories first
INSERT INTO categories (id, name, description, parent_id, status, sort_order, meta_title, meta_description) VALUES 
(1, 'إلكترونيات', 'جميع أنواع الأجهزة الإلكترونية والتقنية', 0, 1, 1, 'إلكترونيات', 'أفضل الإلكترونيات والتقنيات الحديثة'),
(2, 'هواتف ذكية', 'أحدث الهواتف الذكية والأجهزة المحمولة', 1, 1, 1, 'هواتف ذكية', 'هواتف ذكية بأفضل الأسعار'),
(3, 'أجهزة الكمبيوتر', 'أجهزة الكمبيوتر المحمولة والثابتة', 1, 1, 2, 'أجهزة كمبيوتر', 'أجهزة كمبيوتر عالية الأداء'),
(4, 'أجهزة الصوت', 'سماعات ومكبرات الصوت', 1, 1, 3, 'أجهزة صوت', 'أفضل أجهزة الصوت والفيديو'),
(5, 'ملابس وإكسسوارات', 'أحدث صيحات الموضة والأزياء', 0, 1, 2, 'ملابس وإكسسوارات', 'أزياء عصرية وجذابة'),
(6, 'ملابس رجالية', 'ملابس وإكسسوارات للرجال', 5, 1, 1, 'ملابس رجالية', 'ملابس رجالية عصرية'),
(7, 'ملابس نسائية', 'ملابس وإكسسوارات للنساء', 5, 1, 2, 'ملابس نسائية', 'ملابس نسائية أنيقة'),
(8, 'منزل وديكور', 'أدوات وأثاث المنزل والديكور', 0, 1, 3, 'منزل وديكور', 'أدوات المنزل والديكور الحديث');

-- Insert 20 demo products
INSERT INTO products (name, description, price, sale_price, category_id, sku, weight, dimensions, featured, status, stock, meta_title, meta_description) VALUES

-- Electronics - Smartphones (Category ID: 2)
(1, 'آيفون 15 برو ماكس', 'أحدث إصدار من آيفون مع معالج A17 Pro وكاميرا متطورة 48 ميجابكسل. شاشة Super Retina XDR بحجم 6.7 بوصة مع تقنية ProMotion.', 285000, 275000, 2, 'IPP15PM-256-BT', 0.221, '159.9 x 76.7 x 8.25 mm', 1, 1, 25, 'آيفون 15 برو ماكس', 'آيفون 15 برو ماكس بأفضل سعر في الجزائر'),
(2, 'سامسونج جالاكسي S24 الترا', 'هاتف سامسونج الرائد مع قلم S Pen المدمج وكاميرا 200 ميجابكسل. شاشة Dynamic AMOLED 6.8 بوصة مع معدل تحديث 120Hz.', 245000, 235000, 2, 'SGS24U-512-BK', 0.232, '162.3 x 79.0 x 8.6 mm', 1, 1, 18, 'سامسونج جالاكسي S24', 'سامسونج جالاكسي S24 الترا مع قلم S Pen'),
(3, 'شاومي ريدمي نوت 13 برو', 'هاتف ذكي بسعر مناسب مع كاميرا 108 ميجابكسل وبطارية 5000 مللي أمبير. شاشة AMOLED بحجم 6.67 بوصة.', 65000, 59900, 2, 'XMN13P-256-BK', 0.188, '161.15 x 74.95 x 7.98 mm', 0, 1, 35, 'شاومي ريدمي نوت 13', 'هاتف ذكي اقتصادي بأداء ممتاز'),

-- Computers (Category ID: 3)
(4, 'لابتوب ماك بوك آير M3', 'لابتوب Apple الجديد بمعالج M3 القوي. شاشة Liquid Retina 13.6 بوصة، 8GB RAM، SSD 256GB. مثالي للعمل والتصميم.', 195000, 189000, 3, 'MBA-M3-256-SG', 1.24, '30.41 x 21.5 x 1.13 cm', 1, 1, 12, 'ماك بوك آير M3', 'لابتوب Apple MacBook Air M3 الجديد'),
(5, 'لابتوب ديل XPS 13', 'لابتوب فائق النحافة مع معالج Intel Core i7، 16GB RAM، SSD 512GB. شاشة InfinityEdge بحجم 13.4 بوصة.', 175000, 168000, 3, 'DXPS13-I7-512', 1.2, '295.7 x 199.04 x 14.8 mm', 0, 1, 8, 'ديل XPS 13', 'لابتوب ديل XPS 13 للأعمال'),
(6, 'آيباد برو 12.9', 'تابلت آيباد برو بشاشة Liquid Retina XDR مقاس 12.9 بوصة، معالج M2، متوافق مع Apple Pencil و Magic Keyboard.', 185000, 179000, 3, 'IPP129-M2-256', 0.682, '280.6 x 214.9 x 6.4 mm', 1, 1, 15, 'آيباد برو 12.9', 'تابلت آيباد برو احترافية'),

-- Audio Devices (Category ID: 4)
(7, 'إيربودز برو الجيل الثاني', 'سماعات لاسلكية بتقنية إلغاء الضوضاء النشطة، جودة صوت عالية، عمر بطارية يصل إلى 30 ساعة مع العلبة.', 45000, 42000, 4, 'APP2-GEN', 0.056, '30.9 x 21.8 x 24.0 mm', 1, 1, 42, 'إيربودز برو 2', 'سماعات إيربودز برو اللاسلكية'),
(8, 'سوني WH-1000XM5', 'سماعات راقية مع إلغاء ضوضاء متطور، جودة صوت عالية الدقة، عمر بطارية 30 ساعة.', 85000, 79900, 4, 'SNYWH1000XM5', 0.250, '263 x 238 x 78 mm', 0, 1, 22, 'سماعات سوني WH-1000XM5', 'سماعات سوني راقية مع إلغاء الضوضاء'),
(9, 'جاور بوكس 5', 'مكبر صوت محمول مقاوم للماء، جودة صوت قوية، عمر بطارية 20 ساعة، Bluetooth 5.1.', 35000, 32000, 4, 'JB-BOX5-BT', 0.9, '184 x 69 x 69 mm', 0, 1, 28, 'جاور بوكس 5', 'مكبر صوت محمول قوي'),

-- Men's Clothing (Category ID: 6)
(10, 'قميص رجالي كلاسيكي أبيض', 'قميص رجالي من القطن الطبيعي، قص كلاسيكي مناسب للعمل والمناسبات. أبيض نقي، مقاسات من S إلى XXL.', 8500, 7500, 6, 'MSHIRT-WHT-L', 0.200, NULL, 0, 1, 150, 'قميص رجالي أبيض', 'قميص رجالي كلاسيكي أبيض من القطن'),
(11, 'جاكيت جينز رجالي', 'جاكيت جينز عصري، خامة جينز مرنة ومريحة. تصميم كلاسيكي يناسب جميع الأعمار. أزرق داكن.', 15000, 13500, 6, 'MJACKET-DN', 0.800, NULL, 1, 1, 85, 'جاكيت جينز رجالي', 'جاكيت جينز رجالي عصري وأنيق'),
(12, 'بنطلون رجالي كاجوال', 'بنطلون رجالي مريح من القطن والسباندكس، مناسب للاستخدام اليومي. أسود ورمادي متوفر.', 12000, 10500, 6, 'MPANTS-CAS', 0.600, NULL, 0, 1, 120, 'بنطلون رجالي كاجوال', 'بنطلون رجالي مريح للاستخدام اليومي'),

-- Women's Clothing (Category ID: 7)
(13, 'فستان نسائي صيفي أنيق', 'فستان نسائي صيفي من خامة خفيفة ومناسبة، تصميم أنيق يناسب المناسبات. متوفر بألوان متنوعة.', 18500, 16500, 7, 'WDRS-SUM', 0.300, NULL, 1, 1, 95, 'فستان نسائي صيفي', 'فستان نسائي صيفي أنيق ومريح'),
(14, 'بلوزة نسائية من الحرير', 'بلوزة نسائية راقية من الحرير الطبيعي، مناسبة للعمل والمناسبات الرسمية. ألوان هادئة وأنيقة.', 22000, 19800, 7, 'WBLOUSE-SILK', 0.180, NULL, 0, 1, 65, 'بلوزة نسائية حرير', 'بلوزة نسائية راقية من الحرير'),
(15, 'جينز نسائي عصري', 'جينز نسائي عصري ب cutting حديث، خامة مرنة ومريحة. مناسب للإطلالات اليومية. مقاسات من 36 إلى 48.', 16000, 14200, 7, 'WJNS-MOD', 0.550, NULL, 0, 1, 110, 'جينز نسائي', 'جينز نسائي عصري ومريح'),

-- Home & Decor (Category ID: 8)
(16, 'مجموعة أكواب شاي سيراميك', 'مجموعة من 6 أكواب شاي سيراميك عالية الجودة مع صحون. تصميم أنيق مناسب للمنزل والاستقبال.', 12000, 10500, 8, 'TEACUP-SET-6', 1.200, NULL, 0, 1, 45, 'مجموعة أكواب شاي', 'مجموعة أكواب شاي سيراميك أنيقة'),
(17, 'مصباح LED ذكي', 'مصباح LED ذكي قابل للتحكم عبر الهاتف، ألوان متنوعة، نظام إضاءة قابل للبرمجة. موفر للطاقة.', 25000, 22000, 8, 'LED-LAMP-SMART', 0.800, '25 x 25 x 15 cm', 1, 1, 30, 'مصباح LED ذكي', 'مصباح LED ذكي للتحكم المتقدم'),
(18, 'وسادة ديكور مطرزة', 'وسادة ديكور مطرزة يدوياً بتصاميم تقليدية. خامة ناعمة ومريحة، مثالية لغرفة المعيشة.', 8500, 7500, 8, 'CUSHION-EMBR', 0.450, '45 x 45 cm', 0, 1, 75, 'وسادة ديكور مطرزة', 'وسادة ديكور مطرزة يدوياً'),
(19, 'سلة تخزين القماش', 'سلة تخزين قماشية قابلة للطي، مثالية لتنظيم الملابس والمناشف. متوفرة بأحجام وألوان مختلفة.', 6500, 5800, 8, 'STORAGE-BASKET', 0.300, '40 x 30 x 25 cm', 0, 1, 60, 'سلة تخزين قماش', 'سلة تخزين قماشية عملية'),
(20, 'شمعة عطرية كبيرة', 'شمعة عطرية كبيرة بمدة احتراق طويلة، روائح هادئة ومنعشة. مثالية للاسترخاء والديكور.', 4200, 3800, 8, 'CANDLE-FRAG-L', 0.850, '10 x 15 cm', 0, 1, 85, 'شمعة عطرية', 'شمعة عطرة كبيرة للاسترخاء');

-- Insert product images
INSERT INTO product_images (product_id, image_url, alt_text, sort_order, is_primary) VALUES

-- iPhone 15 Pro Max images
(1, 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?w=500&h=500&fit=crop&crop=center', 'آيفون 15 برو ماكس', 1, 1),
(1, 'https://images.unsplash.com/photo-1695048133162-1a20484d2568?w=500&h=500&fit=crop&crop=center', 'آيفون 15 برو ماكس - زاوية جانبية', 2, 0),

-- Samsung Galaxy S24 Ultra images
(2, 'https://images.unsplash.com/photo-1610945415295-d9bbf065e0dd?w=500&h=500&fit=crop&crop=center', 'سامسونج جالاكسي S24 الترا', 1, 1),
(2, 'https://images.unsplash.com/photo-1610945264803-c22f62dd4a10?w=500&h=500&fit=crop&crop=center', 'سامسونج جالاكسي S24 - قلم S Pen', 2, 0),

-- Xiaomi Redmi Note 13 Pro images
(3, 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=500&h=500&fit=crop&crop=center', 'شاومي ريدمي نوت 13 برو', 1, 1),

-- MacBook Air M3 images
(4, 'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=500&h=500&fit=crop&crop=center', 'ماك بوك آير M3', 1, 1),
(4, 'https://images.unsplash.com/photo-1486312338219-ce68e2c6b21d?w=500&h=500&fit=crop&crop=center', 'ماك بوك آير M3 - مفتوح', 2, 0),

-- Dell XPS 13 images
(5, 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500&h=500&fit=crop&crop=center', 'ديل XPS 13', 1, 1),

-- iPad Pro 12.9 images
(6, 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=500&h=500&fit=crop&crop=center', 'آيباد برو 12.9', 1, 1),
(6, 'https://images.unsplash.com/photo-1561154464-82e9adf32764?w=500&h=500&fit=crop&crop=center', 'آيباد برو مع Apple Pencil', 2, 0),

-- AirPods Pro images
(7, 'https://images.unsplash.com/photo-1606220588913-b3aacb4d2f46?w=500&h=500&fit=crop&crop=center', 'إيربودز برو الجيل الثاني', 1, 1),
(7, 'https://images.unsplash.com/photo-1606220588913-b3aacb4d2f47?w=500&h=500&fit=crop&crop=center', 'إيربودز برو في العلبة', 2, 0),

-- Sony WH-1000XM5 images
(8, 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?w=500&h=500&fit=crop&crop=center', 'سماعات سوني WH-1000XM5', 1, 1),

-- JBL Box 5 images
(9, 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=500&h=500&fit=crop&crop=center', 'جاور بوكس 5', 1, 1),

-- Men's white shirt images
(10, 'https://images.unsplash.com/photo-1596755094514-f87e34085b2c?w=500&h=500&fit=crop&crop=center', 'قميص رجالي كلاسيكي أبيض', 1, 1),

-- Men's denim jacket images
(11, 'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=500&h=500&fit=crop&crop=center', 'جاكيت جينز رجالي', 1, 1),

-- Men's casual pants images
(12, 'https://images.unsplash.com/photo-1473966968600-fa801b869a1a?w=500&h=500&fit=crop&crop=center', 'بنطلون رجالي كاجوال', 1, 1),

-- Women's summer dress images
(13, 'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?w=500&h=500&fit=crop&crop=center', 'فستان نسائي صيفي أنيق', 1, 1),

-- Women's silk blouse images
(14, 'https://images.unsplash.com/photo-1595777457583-95e059d581b8?w=500&h=500&fit=crop&crop=center', 'بلوزة نسائية من الحرير', 1, 1),

-- Women's jeans images
(15, 'https://images.unsplash.com/photo-1582418702117-13b3f80356a8?w=500&h=500&fit=crop&crop=center', 'جينز نسائي عصري', 1, 1),

-- Tea cups set images
(16, 'https://images.unsplash.com/photo-1514228742587-6b1558f3c117?w=500&h=500&fit=crop&crop=center', 'مجموعة أكواب شاي سيراميك', 1, 1),

-- LED smart lamp images
(17, 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=500&h=500&fit=crop&crop=center', 'مصباح LED ذكي', 1, 1),

-- Embroidered cushion images
(18, 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=500&h=500&fit=crop&crop=center', 'وسادة ديكور مطرزة', 1, 1),

-- Fabric storage basket images
(19, 'https://images.unsplash.com/photo-1556228453-efd6c1ff04f6?w=500&h=500&fit=crop&crop=center', 'سلة تخزين قماش', 1, 1),

-- Large scented candle images
(20, 'https://images.unsplash.com/photo-1602874801002-1d72206cbe52?w=500&h=500&fit=crop&crop=center', 'شمعة عطرية كبيرة', 1, 1);

-- Insert product specifications for some products
INSERT INTO product_specifications (product_id, name, value, sort_order) VALUES

-- iPhone 15 Pro Max specifications
(1, 'الشاشة', '6.7 بوصة Super Retina XDR', 1),
(1, 'المعالج', 'A17 Pro', 2),
(1, 'الذاكرة', '256GB', 3),
(1, 'الكاميرا', '48 ميجابكسل', 4),
(1, 'البطارية', '4422 مللي أمبير', 5),

-- Samsung Galaxy S24 Ultra specifications
(2, 'الشاشة', '6.8 بوصة Dynamic AMOLED', 1),
(2, 'المعالج', 'Snapdragon 8 Gen 3', 2),
(2, 'الذاكرة', '512GB', 3),
(2, 'الكاميرا', '200 ميجابكسل', 4),
(2, 'القلم', 'S Pen مدمج', 5),

-- MacBook Air M3 specifications
(4, 'المعالج', 'Apple M3', 1),
(4, 'الذاكرة', '8GB unified memory', 2),
(4, 'التخزين', '256GB SSD', 3),
(4, 'الشاشة', '13.6 بوصة Liquid Retina', 4),
(4, 'الوزن', '1.24 كيلو', 5),

-- AirPods Pro specifications
(7, 'عمر البطارية', '6 ساعات + 24 ساعة مع العلبة', 1),
(7, 'إلغاء الضوضاء', 'تقنية ANC متطورة', 2),
(7, 'مقاومة الماء', 'IPX4', 3),
(7, 'الاتصال', 'Bluetooth 5.3', 4),
(7, 'مستشعرات', 'مستشعرات بصرية وصوتية', 5);

-- Insert product variants for products with multiple options
INSERT INTO product_variants (product_id, name, price, stock, sku, attributes) VALUES

-- iPhone 15 Pro Max color variants
(1, 'آيفون 15 برو ماكس - تيتانيوم طبيعي', 275000, 10, 'IPP15PM-256-TN', '{"color": "تيتانيوم طبيعي", "storage": "256GB"}'),
(1, 'آيفون 15 برو ماكس - أزرق تيتانيوم', 275000, 8, 'IPP15PM-256-BT', '{"color": "أزرق تيتانيوم", "storage": "256GB"}'),
(1, 'آيفون 15 برو ماكس - تيتانيوم أبيض', 275000, 7, 'IPP15PM-256-TW', '{"color": "تيتانيوم أبيض", "storage": "256GB"}'),

-- Samsung Galaxy S24 Ultra variants
(2, 'سامسونج S24 الترا - أسود', 235000, 6, 'SGS24U-512-BK', '{"color": "أسود", "storage": "512GB"}'),
(2, 'سامسونج S24 الترا - رمادي', 235000, 6, 'SGS24U-512-GY', '{"color": "رمادي", "storage": "512GB"}'),
(2, 'سامسونج S24 الترا - بنفسجي', 235000, 6, 'SGS24U-512-PL', '{"color": "بنفسجي", "storage": "512GB"}'),

-- Men's shirt size variants
(10, 'قميص رجالي - حجم S', 7500, 25, 'MSHIRT-WHT-S', '{"size": "S"}'),
(10, 'قميص رجالي - حجم M', 7500, 35, 'MSHIRT-WHT-M', '{"size": "M"}'),
(10, 'قميص رجالي - حجم L', 7500, 40, 'MSHIRT-WHT-L', '{"size": "L"}'),
(10, 'قميص رجالي - حجم XL', 7500, 30, 'MSHIRT-WHT-XL', '{"size": "XL"}'),
(10, 'قميص رجالي - حجم XXL', 7500, 20, 'MSHIRT-WHT-XXL', '{"size": "XXL"}'),

-- Women's dress variants
(13, 'فستان صيفي - أحمر', 16500, 20, 'WDRS-SUM-R', '{"color": "أحمر", "size": "متوسط"}'),
(13, 'فستان صيفي - أزرق', 16500, 25, 'WDRS-SUM-B', '{"color": "أزرق", "size": "متوسط"}'),
(13, 'فستان صيفي - أخضر', 16500, 22, 'WDRS-SUM-G', '{"color": "أخضر", "size": "متوسط"}'),
(13, 'فستان صيفي - أسود', 16500, 28, 'WDRS-SUM-K', '{"color": "أسود", "size": "متوسط"}'),

-- Candle scent variants
(20, 'شمعة عطرية - الفانيليا', 3800, 25, 'CANDLE-FRAG-V', '{"scent": "فانيليا"}'),
(20, 'شمعة عطرية - اللافندر', 3800, 20, 'CANDLE-FRAG-LA', '{"scent": "لavianدر"}'),
(20, 'شمعة عطرية - الحمضيات', 3800, 22, 'CANDLE-FRAG-C', '{"scent": "حمضيات"}'),
(20, 'شمعة عطرية - الورود', 3800, 18, 'CANDLE-FRAG-R', '{"scent": "ورود"}');