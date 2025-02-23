-- Create tables
CREATE TABLE categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
);

CREATE TABLE colours (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(50),
  categories_id INTEGER,
  FOREIGN KEY (categories_id) REFERENCES categories(id)
);

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  categories_id INTEGER,
  FOREIGN KEY (categories_id) REFERENCES categories(id)
);

CREATE TABLE products_colours (
    products_id INT,
    colours_id INT,
    FOREIGN KEY (products_id) REFERENCES products(id),
    FOREIGN KEY (colours_id) REFERENCES colours(id),
    PRIMARY KEY (products_id, colours_id)
);

CREATE TABLE customers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FirstName VARCHAR(100),
  LastName VARCHAR(100),
  Email VARCHAR(255),
  PhoneNumber VARCHAR(20),
  Addresses TEXT
);

CREATE TABLE reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  customers_id INTEGER,
  comment_text TEXT,
  rating NUMERIC(3,1),
  FOREIGN KEY (products_id) REFERENCES products(id),
  FOREIGN KEY (customers_id) REFERENCES customers(id)
);

-- Populate with data
insert into categories (name, description) values ('Fish', 'Fish');
insert into categories (name, description) values ('ShellFish', 'ShellFish');
insert into categories (name, description) values ('Exotic Fish', 'Exotic Fish');
insert into categories (name, description) values ('Pet Fish', 'Pet Fish');
insert into categories (name, description) values ('Colour', 'kleuren');

insert into colours (name, categories_id) values ('Brown', 4); -- 1
insert into colours (name, categories_id) values ('Grey', 4); -- 2
insert into colours (name, categories_id) values ('Green', 4); -- 3
insert into colours (name, categories_id) values ('Red', 4); -- 4
insert into colours (name, categories_id) values ('Blue', 4); -- 5
insert into colours (name, categories_id) values ('Black', 4); -- 6
insert into colours (name, categories_id) values ('Yellow', 4); -- 7
insert into colours (name, categories_id) values ('Orange', 4); -- 8
insert into colours (name, categories_id) values ('White', 4); -- 9
insert into colours (name, categories_id) values ('Purple', 4); -- 10

insert into products_colours (products_id, colours_id) values (1, 1);
insert into products_colours (products_id, colours_id) values (1, 9);

insert into products_colours (products_id, colours_id) values (2, 6);
insert into products_colours (products_id, colours_id) values (2, 5);
insert into products_colours (products_id, colours_id) values (2, 9);

insert into products_colours (products_id, colours_id) values (3, 3);
insert into products_colours (products_id, colours_id) values (3, 1);

insert into products_colours (products_id, colours_id) values (4, 1);
insert into products_colours (products_id, colours_id) values (4, 3);

insert into products_colours (products_id, colours_id) values (5, 4);
insert into products_colours (products_id, colours_id) values (5, 9);

insert into products_colours (products_id, colours_id) values (6, 6);
insert into products_colours (products_id, colours_id) values (6, 5);
insert into products_colours (products_id, colours_id) values (6, 9);

insert into products_colours (products_id, colours_id) values (7, 5);
insert into products_colours (products_id, colours_id) values (7, 9);

insert into products_colours (products_id, colours_id) values (8, 9);
insert into products_colours (products_id, colours_id) values (8, 6);
insert into products_colours (products_id, colours_id) values (8, 8);

insert into products_colours (products_id, colours_id) values (9, 4);

insert into products_colours (products_id, colours_id) values (10, 6);
insert into products_colours (products_id, colours_id) values (10, 7);

insert into products_colours (products_id, colours_id) values (11, 6);
insert into products_colours (products_id, colours_id) values (11, 9);

insert into products_colours (products_id, colours_id) values (12, 9);
insert into products_colours (products_id, colours_id) values (12, 6);
insert into products_colours (products_id, colours_id) values (12, 8);
insert into products_colours (products_id, colours_id) values (12, 4);
insert into products_colours (products_id, colours_id) values (12, 1);

insert into products_colours (products_id, colours_id) values (13, 5);
insert into products_colours (products_id, colours_id) values (13, 7);

insert into products_colours (products_id, colours_id) values (14, 1);
insert into products_colours (products_id, colours_id) values (14, 9);
insert into products_colours (products_id, colours_id) values (14, 2);
insert into products_colours (products_id, colours_id) values (14, 7);
insert into products_colours (products_id, colours_id) values (14, 5);

insert into products_colours (products_id, colours_id) values (15, 4);

insert into products_colours (products_id, colours_id) values (16, 1);
insert into products_colours (products_id, colours_id) values (16, 9);
insert into products_colours (products_id, colours_id) values (16, 2);

insert into products_colours (products_id, colours_id) values (17, 1);
insert into products_colours (products_id, colours_id) values (17, 9);
insert into products_colours (products_id, colours_id) values (17, 10);

insert into products_colours (products_id, colours_id) values (18, 8);

insert into products_colours (products_id, colours_id) values (19, 8);
insert into products_colours (products_id, colours_id) values (19, 2);
insert into products_colours (products_id, colours_id) values (19, 1);
insert into products_colours (products_id, colours_id) values (19, 6);
insert into products_colours (products_id, colours_id) values (19, 5);
insert into products_colours (products_id, colours_id) values (19, 3);

insert into products_colours (products_id, colours_id) values (20, 5);
insert into products_colours (products_id, colours_id) values (20, 2);
insert into products_colours (products_id, colours_id) values (20, 9);

insert into products_colours (products_id, colours_id) values (21, 2);
insert into products_colours (products_id, colours_id) values (21, 9);

insert into products_colours (products_id, colours_id) values (22, 7);
insert into products_colours (products_id, colours_id) values (22, 5);
insert into products_colours (products_id, colours_id) values (22, 8);
insert into products_colours (products_id, colours_id) values (22, 6);

insert into products_colours (products_id, colours_id) values (23, 7);
insert into products_colours (products_id, colours_id) values (23, 9);
insert into products_colours (products_id, colours_id) values (23, 6);
insert into products_colours (products_id, colours_id) values (23, 2);

insert into products_colours (products_id, colours_id) values (24, 4);
insert into products_colours (products_id, colours_id) values (24, 10);
insert into products_colours (products_id, colours_id) values (24, 3);
insert into products_colours (products_id, colours_id) values (24, 5);
insert into products_colours (products_id, colours_id) values (24, 7);

insert into products (name, description, code, price, categories_id) values ('Kabeljauw', 'Very very cheap 1 pound kabeljauw', '816905633-0', 10, 1); -- 1
insert into products (name, description, code, price, categories_id) values ('Forel', 'Very very good 1 pound Forel', '077030122-3', 20, 1); -- 2
insert into products (name, description, code, price, categories_id) values ('Fish Zekeriya', 'Limited Edition. Only 1 in the world!', '445924201-X', 1000000, 3); -- 3
insert into products (name, description, code, price, categories_id) values ('Sliptong', 'Very very good 1 pound Sliptong', '693155505-7', 30, 1); -- 4
insert into products (name, description, code, price, categories_id) values ('Dorade', 'Very very good 1 pound Dorade', '686928463-6', 40, 1); -- 5 
insert into products (name, description, code, price, categories_id) values ('Zalm', 'Very very good 1 pound Zalm', '492662523-7', 60, 1); -- 6 
insert into products (name, description, code, price, categories_id) values ('BlueFish', 'Very very cheap 1 pound fish', '346814286-8', 70, 1); -- 7
insert into products (name, description, code, price, categories_id) values ('Koi Fish', 'Very very good 1 pound fish', '013578479-0', 100, 4); -- 8
insert into products (name, description, code, price, categories_id) values ('Crab', 'Very very good 1 pound crab', '293829104-4', 50, 2); -- 9
insert into products (name, description, code, price, categories_id) values ('Mussel', 'Very very good 1 pound mussel', '820451759-9', 10, 2); -- 10
insert into products (name, description, code, price, categories_id) values ('WhaleShark', 'Very very good 1000 pound WhaleShark', '239471047-6', 10000, 3); -- 11
insert into products (name, description, code, price, categories_id) values ('Lionfish', 'Very very good 1 pound lionfish', '930284917-3', 100, 3); -- 12
insert into products (name, description, code, price, categories_id) values ('Devils Hole PupFish', 'Very very good 1 pound devils hole pupfish', '7283928193-2', 200, 3); -- 13
insert into products (name, description, code, price, categories_id) values ('BlueFin tuna', 'Very very good 500 pound BlueFin tuna', '283049123-8', 150, 3); -- 14
insert into products (name, description, code, price, categories_id) values ('Lobster', 'Very very good 1 pound Lobster', '819238471-2', 15, 2); --15
insert into products (name, description, code, price, categories_id) values ('Oyster', 'Very very good 1 pound Oyster', '728394012-2', 20, 2); -- 16
insert into products (name, description, code, price, categories_id) values ('The Betta', 'Very very good 1 pound The Betta', '829374213-4', 60, 4); -- 17
insert into products (name, description, code, price, categories_id) values ('Gold Fish', 'Very very good 1 pound Gold fish', '639201923-4', 30, 4); -- 18
insert into products (name, description, code, price, categories_id) values ('Guppies', 'Very very good 1 pound Guppies', '718293847-4', 60, 4); -- 19
insert into products (name, description, code, price, categories_id) values ('Tilapia', 'Very very cheap 1 pound Tilapia', '234146738-0', 10, 1); -- 20
insert into products (name, description, code, price, categories_id) values ('Haring', 'Very very cheap 1 pound Haring', '634357259-0', 10, 1); -- 21
insert into products (name, description, code, price, categories_id) values ('Barrango', 'Very very good 1 pound Barrango', '532465785-7', 10000, 3); -- 22
insert into products (name, description, code, price, categories_id) values ('Angelfish', 'Very very good 1 pound Angelfish', '231546756-0', 10000, 3); -- 23
insert into products (name, description, code, price, categories_id) values ('Arowana', 'Very very good 1 pound Arowana', '233409865-6', 10000, 3); -- 24

insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('Elizabeth', 'Smith', 'elizasmith32@gmail.com', '0648362973', 'Tulpweg 44, Rotterdam');
insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('James', 'Williams', 'willj77@hotmail.com', '0617582374', 'Schilderswijk 86, Den Haag');
insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('Mellisa', 'Collins', 'mellisacol123@outlook.com', '0694371326', 'Molenweg 12, Amsterdam');
insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('Taylor', 'Holland', 'amazingtay69@gmail.com', '0684215980', 'Klompstraat 75, Utrecht');

insert into reviews (products_id, customers_id, comment_text, rating) values (1, 1, 'Kabeljauw was very delicious!', 7.9);
insert into reviews (products_id, customers_id, comment_text, rating) values (19, 3, 'The Guppies are really cute, I love them a lot!', 8.8);
