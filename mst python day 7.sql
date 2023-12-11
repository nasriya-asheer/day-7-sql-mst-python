CREATE DATABASE OnlineBookstore;
CREATE TABLE authors(author_id INT not null AUTO_INCREMENT,author_name VARCHAR(20),
country VARCHAR(20),PRIMARY KEY(author_id));
CREATE TABLE books
 (book_id int NOT NULL AUTO_INCREMENT,title VARCHAR(20),author_id INT NOT NULL,
 price FLOAT,published_year INT,primary key(book_id),
 foreign key (author_id) REFERENCES authors (author_id)); 
 CREATE TABLE orders
 (order_id INT NOT NULL AUTO_INCREMENT,book_id INT,customer_name VARCHAR(20),order_date DATE,
 PRIMARY KEY(order_id),FOREIGN KEY (book_id) REFERENCES books(book_id));
 INSERT INTO authors(author_name,country) VALUES ('Khaled Hosseini','USA'),
 ('Paulo Coelho','Germany'),('jumpa lahiri','london'),('salman rushdie','poland');

 ALTER TABLE books AUTO_INCREMENT = 10;
 ALTER TABLE orders AUTO_INCREMENT= 20;
 INSERT INTO books(title,price,published_year,author_id) VALUES ('kite runner',350,2000,1),
 ('alchemist',400,1965,2),('name sake',250,1992,3),('satanic verses',420,2001,4);

 INSERT INTO orders(book_id, customer_name, order_date)
VALUES
  (10, 'NASRIYA', '2022-10-10'),
  (10, 'ANAGHA', '2020-02-12'),
  (11, 'ASHEER', '2022-11-14'),
  (12, 'NIYAS', '1999-02-03'),
  (12, 'AIREEN', '2020-05-12'),
  (13, 'NISHAD', '1988-12-06'),
  (13, 'MITHUN', '1999-12-02');
 
SELECT title FROM books;
SELECT customer_name from orders ORDER BY customer_name;
ALTER TABLE books ADD genre VARCHAR(20);
UPDATE books set genre='novel' where book_id=10;
UPDATE books set genre='biography' where book_id=11;
UPDATE books set genre='novel' where book_id=12;
UPDATE books set genre='short_Story' where book_id=13;
SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM orders;
ALTER TABLE orders add quantity int;
UPDATE orders set quantity=2  where order_id=20;
UPDATE orders set quantity=1  where order_id=21;
UPDATE orders set quantity=3  where order_id=22;
UPDATE orders set quantity=1  where order_id=23;
UPDATE orders set quantity=2  where order_id=24;
UPDATE orders set quantity=4  where order_id=25;
UPDATE orders set quantity=3  where order_id=26;
SELECT title,author_name FROM books INNER JOIN authors ON authors.author_id=books.author_id;
SELECT title,customer_name from books INNER JOIN orders ON books.book_id=orders.book_id;
