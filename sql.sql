-- drop database healthy_fruits_shop 

 
CREATE DATABASE healthy_fruits_shop ;

use healthy_fruits_shop  ;

 
CREATE TABLE accounts 
( 
id int auto_increment primary key,
 username  varchar (50) not null unique, 
password   varchar (50) NULL,
 email   varchar (50) NULL, 
 fullname   nvarchar (50) NULL, 
  photo   varchar (50) NULL, 
 admin   bit  NOT NULL, 
  activated   bit  NOT NULL
) ;

CREATE TABLE  categories ( 
id int auto_increment primary key,
 name   varchar (50)  
);
 
CREATE TABLE  products ( 
 id   int  auto_increment primary key, 
 createdate   date  NULL, 
 image   text NULL, 
 name   varchar (50) NULL, 
 price   float  NULL, 
 description text null,
  available   bit  NULL, 
  discount float null,
 categoryid   int,
 foreign key (categoryid) references categories(id) 
);
create table imagesOfProduct(
	 id   int  auto_increment primary key, 
     id_product int,
     image text ,
      foreign key (id_product) references products(id) 
);
CREATE TABLE  orders ( 
 id   int  auto_increment primary key, 
 address   varchar (50) NULL, 
 createdate   date  NULL, 
 phone_number varchar(10) null,
 id_user   int ,
  foreign key (id_user) references accounts(id)
);

 
CREATE TABLE  orderdetails ( 
 id   int  auto_increment primary key, 
 price   float  NULL, 
 quantity   int  NULL, 
 orderid   int  ,
 productid   int , 
  foreign key (orderid) references orders(id), 
   foreign key (productid) references products(id) 
) ;

create table Cart_Session(
id   int  auto_increment primary key, 
 price   float  NULL, 
 quantity   int  NULL, 
  createdate   date  NULL, 
  updatedate date Null,
 productid   int ,
 id_user   int , 
  foreign key (productid) references products(id) ,
foreign key (id_user) references accounts(id)
);




-- Insert vào bảng accounts
INSERT INTO accounts (username, activated, admin, email, fullname, password, photo)
VALUES 
    ('user1', 1, 0, 'user1@example.com', N'Nguyễn Văn A', 'password1', 'author.jpg'),
    ('user2', 1, 0, 'user2@example.com', N'Trần Thị B', 'password2', 'author-02.jpg'),
    ('user3', 1, 0, 'user3@example.com', N'Phạm Văn C', 'password3', 'author-03.jpg'),
    ('user4', 1, 0, 'user4@example.com', N'Lê Thị D', 'password4', 'post-wgt-01.jpg'),
    ('user5', 1, 0, 'user5@example.com', N'Nguyễn Văn E', 'password5', 'post-wgt-02.jpg'),
    ('user6', 1, 0, 'user6@example.com', N'Trần Thị F', 'password6', 'post-wgt-03.jpg');
-- Insert vào bảng categories
INSERT INTO categories ( name)
VALUES 
    (  N'Organic Food'),
    ( N'Fresh Fruit'),
    ( N'Dried Fruits');

-- Insert vào bảng products
INSERT INTO products (available, createdate, image, name, discount,price, categoryid, description)
VALUES 
    (1, '2023-05-23', 'p-20.jpg', N'National Fresh Fruit',0.1, 350.0, 1 ,''),
(1, '2023-05-23', 'p-01.jpg', N'Organic Hass Avocado'			,0.1,  400.0, 1,'Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
	(1, '2023-05-23', 'p-18.jpg', N'National Fresh Fruit'			,0.1,  320.0, 3,'Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
    (1, '2023-05-23', 'p-06.jpg', N'Packhams Pears'					,0.1,  450.0, 1,'Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
    (1, '2023-05-23', 'p-19.jpg', N'Pumpkins Fairytale'				,0.1,  500.0, 2,'Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
    (1, '2023-05-23', 'p-22.jpg', N'Cherry Tomato Seeds'			,0, 	370.0, 1,'Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
    (1, '2023-05-23', 'p-05.jpg', N'Organic Hass Avocado, Large'	,0, 	480.0, 2,'Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
    (1, '2023-05-23', 'p-02.jpg', N'Hot Chili Peppers Magnetic Salt',0, 	410.0, 3,'Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
    (1, '2023-05-23', 'p-07.jpg', N'13 Healing Powers of Lemons'	,0, 	390.0, 2,'Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
    (1, '2023-05-23', 'p-03.jpg', N'Passover Cauliflower Kugel'		,0, 	420.0, 3,'Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
    (1, '2000-01-01', 'p-17.jpg', N'Non-GMO Project Verified'		,0, 	55.0, '2','Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
(1, '2000-01-01', 'p-11.jpg', N'Flavors Jelly Beans'			,0, 	450.0, '3','Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
	(1, '2000-01-01', 'p-13.jpg', N'Organic 10 Assorted'			,0, 	270.0, '3','Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
	(1, '2000-01-01', 'p-14.jpg', N'Fruit Ingredients'				,0, 	580.0, '3','Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.'),
	(1, '2000-01-01', 'p-10.jpg', N'Duis Ut Mauris'					,0, 	100.0, '3','Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but dont be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.');

   
-- Insert vào bảng orders
INSERT INTO orders (address, createdate, id_user)
VALUES 
    (N'Quận 1, TP. Hồ Chí Minh', '2023-05-23', 1),
    (N'Quận 2, TP. Hồ Chí Minh', '2023-05-23', 2),
    (N'Quận 3, TP. Hồ Chí Minh', '2023-05-23', 3),
    (N'Quận 4, TP. Hồ Chí Minh', '2023-05-23', 4),
    (N'Quận 5, TP. Hồ Chí Minh', '2023-05-23', 5),
    (N'Quận 6, TP. Hồ Chí Minh', '2023-05-23', 6);

-- Insert vào bảng orderdetails
INSERT INTO orderdetails (price, quantity, orderid, productid)
VALUES 
    (350.0, 1, 1, 1),
    (400.0, 2, 2, 2),
    (320.0, 3, 3, 3),
    (450.0, 4, 4, 4),
    (500.0, 5, 5, 5),
    (370.0, 1, 6, 6);

select * from accounts ;

select * from categories ;

select * from products;

select * from orders ;

select * from orderdetails ;

select * from Cart_Session;

select * from imagesOfProduct;
UPDATE accounts SET admin = 1 WHERE (id = 1);

select categories.name,sum(orderdetails.price*orderdetails.quantity) , count(categories.id)   from orderdetails
inner join products on products.id = orderdetails.productid
inner join categories on categories.id = products.categoryid
 group by categories.name;

