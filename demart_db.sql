create database demart_db;
use  demart_db;

create table products (
product_id int primary key, 
product_name varchar(100),
category varchar(50),
brand varchar(50),
quqntity int,
price decimal(10,2),
discount_percent int,
stock_available int,
supplier_name varchar(50),
expiry_date date);

INSERT INTO products VALUES
(1,'Aashirvaad Atta','Grocery','Aashirvaad',5,320,10,100,'ITC','2027-01-10'),
(2,'Tata Salt','Grocery','Tata',1,30,5,200,'Tata Consumer','2028-05-20'),
(3,'Fortune Oil','Grocery','Fortune',1,180,8,150,'Adani Wilmar','2027-08-15'),
(4,'Maggi Noodles','Snacks','Nestle',12,168,10,250,'Nestle','2027-04-12'),
(5,'Parle-G','Biscuits','Parle',10,100,5,300,'Parle','2027-03-11'),

(6,'Good Day','Biscuits','Britannia',5,125,6,180,'Britannia','2027-02-20'),
(7,'Dairy Milk','Chocolate','Cadbury',2,90,4,250,'Cadbury','2027-06-18'),
(8,'Amul Butter','Dairy','Amul',1,55,3,120,'Amul','2026-12-10'),
(9,'Amul Milk','Dairy','Amul',1,30,2,220,'Amul','2026-10-05'),
(10,'Paneer','Dairy','Amul',1,85,5,90,'Amul','2026-09-15'),

(11,'Colgate Toothpaste','Personal Care','Colgate',1,120,10,170,'Colgate','2028-01-01'),
(12,'Dove Soap','Personal Care','Dove',4,180,12,150,'HUL','2028-03-15'),
(13,'Lux Soap','Personal Care','Lux',4,140,8,200,'HUL','2028-05-10'),
(14,'Clinic Plus Shampoo','Personal Care','Clinic Plus',1,220,15,130,'HUL','2028-02-12'),
(15,'Head & Shoulders','Personal Care','P&G',1,250,10,110,'P&G','2028-04-22'),

(16,'Surf Excel','Detergent','HUL',1,350,12,140,'HUL','2028-06-18'),
(17,'Ariel Powder','Detergent','P&G',1,420,10,100,'P&G','2028-07-11'),
(18,'Vim Liquid','Cleaning','Vim',1,180,8,170,'HUL','2028-08-09'),
(19,'Harpic','Cleaning','Harpic',1,110,5,160,'Reckitt','2028-01-30'),
(20,'Lizol','Cleaning','Lizol',1,220,10,140,'Reckitt','2028-09-01'),

(21,'Pepsi','Beverages','Pepsi',2,40,3,250,'PepsiCo','2027-11-10'),
(22,'Coca Cola','Beverages','Coca Cola',2,40,3,250,'Coca Cola','2027-11-10'),
(23,'Sprite','Beverages','Coca Cola',2,40,3,240,'Coca Cola','2027-10-08'),
(24,'Maaza','Beverages','Coca Cola',1,45,2,210,'Coca Cola','2027-12-15'),
(25,'Frooti','Beverages','Parle Agro',1,20,2,280,'Parle Agro','2027-09-22'),

(26,'Lays Chips','Snacks','Lays',1,20,5,320,'PepsiCo','2027-08-10'),
(27,'Kurkure','Snacks','Kurkure',1,20,5,330,'PepsiCo','2027-08-12'),
(28,'Bingo Chips','Snacks','ITC',1,20,4,300,'ITC','2027-07-18'),
(29,'Hide & Seek','Biscuits','Parle',1,35,5,260,'Parle','2027-05-15'),
(30,'Oreo','Biscuits','Oreo',1,40,5,270,'Mondelez','2027-04-12'),

(31,'Red Label Tea','Beverages','Brooke Bond',1,280,10,150,'HUL','2028-02-11'),
(32,'Taj Mahal Tea','Beverages','Brooke Bond',1,320,8,120,'HUL','2028-03-14'),
(33,'Nescafe Coffee','Beverages','Nestle',1,450,12,110,'Nestle','2028-04-18'),
(34,'Bru Coffee','Beverages','Bru',1,350,10,130,'HUL','2028-05-19'),
(35,'Bournvita','Health Drink','Cadbury',1,420,10,140,'Cadbury','2028-01-11'),

(36,'Horlicks','Health Drink','Horlicks',1,390,8,150,'HUL','2028-02-12'),
(37,'Complan','Health Drink','Complan',1,450,10,120,'Complan','2028-03-13'),
(38,'Kelloggs Cornflakes','Breakfast','Kelloggs',1,240,8,130,'Kelloggs','2028-04-14'),
(39,'Muesli','Breakfast','Bagrrys',1,350,10,90,'Bagrrys','2028-05-15'),
(40,'Oats','Breakfast','Quaker',1,180,5,150,'PepsiCo','2028-06-16'),

(41,'Rice 5kg','Grocery','India Gate',5,450,10,100,'India Gate','2028-07-17'),
(42,'Toor Dal','Grocery','Fortune',1,170,8,130,'Fortune','2028-08-18'),
(43,'Moong Dal','Grocery','Fortune',1,160,8,120,'Fortune','2028-09-19'),
(44,'Chana Dal','Grocery','Fortune',1,140,5,140,'Fortune','2028-10-20'),
(45,'Sugar','Grocery','Madhur',1,50,2,180,'Madhur','2028-11-21'),

(46,'Salted Peanuts','Snacks','Haldiram',1,60,5,160,'Haldiram','2027-06-11'),
(47,'Bhujia','Snacks','Haldiram',1,80,5,150,'Haldiram','2027-07-12'),
(48,'Ketchup','Sauce','Kissan',1,120,10,130,'HUL','2028-01-15'),
(49,'Jam','Spread','Kissan',1,140,10,120,'HUL','2028-02-16'),
(50,'Peanut Butter','Spread','Pintola',1,350,12,90,'Pintola','2028-03-17');

select * from products;



-- find avg price of products
select avg(price) as avg_price from products;
 
-- display only product name category brand and price
select product_name, category, brand ,price from products;

-- display product whose price is greater than 300 
select * from products where price>300;

-- display all unique brands
select distinct brand from products;

-- find or display all unique product category
select distinct category from products;

-- find product whose name has exactly five character
select * from products where product_name like '_____';

-- find product_name category brand whose stock available is greater than 200
select product_name, category ,brand from products where stock_available>200;


--   find the most expensive five product 
select * from products
 order by price desc 
limit 5;

-- find the top five products with heighest discount 
select product_name,discount_percent , price from products
 order by discount_percent desc 
limit 5;

-- find the avg discount percensentage
select avg(discount_percent) as avg from products;

-- find the number of product in each category
select category, count(*)from products group by category;

-- find the avg price of each category
select category, avg(price)from products group by category;

-- find the max price of each category
select category,  max(price) from products group by category;

-- find the no of products supplier by each supplire
select supplier_name, count(*) from products group by supplier_name;

-- find the total stock supplied by each supplier
select supplier_name, sum(stock_available)as total_stock from products group by supplier_name;

-- find categories having more than five products
select category, count(*) from products group by category having count(*)>5;
