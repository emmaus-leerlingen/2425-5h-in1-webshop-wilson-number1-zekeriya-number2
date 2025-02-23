-- Create tables
CREATE TABLE categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
);

CREATE TABLE colours (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(50)
);

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  categories_id INTEGER,
  colours_id INTEGER,  
  FOREIGN KEY (categories_id) REFERENCES categories(id),
  FOREIGN KEY (colours_id) REFERENCES colours(id)
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

insert into colours (name) values ('Brown');
insert into colours (name) values ('Grey');
insert into colours (name) values ('Green');
insert into colours (name) values ('Red');
insert into colours (name) values ('Blue');
insert into colours (name) values ('Black');
insert into colours (name) values ('Mix');
insert into colours (name) values ('Orange');

insert into products (name, description, code, price, categories_id, colours_id) values ('Kabeljauw', 'Very very cheap 1 pound kabeljauw', '816905633-0', 10, 1, 1);
insert into products (name, description, code, price, categories_id, colours_id) values ('Forel', 'Very very good 1 pound Forel', '077030122-3', 20, 1, 2);
insert into products (name, description, code, price, categories_id, colours_id) values ('Fish Zekeriya', 'Limited Edition. Only 1 in the world!', '445924201-X', 1000000, 3, 3);
insert into products (name, description, code, price, categories_id, colours_id) values ('Sliptong', 'Very very good 1 pound Sliptong', '693155505-7', 30, 1, 4);
insert into products (name, description, code, price, categories_id, colours_id) values ('Dorade', 'Very very good 1 pound Dorade', '686928463-6', 40, 1, 5);
insert into products (name, description, code, price, categories_id, colours_id) values ('Zalm', 'Very very good 1 pound Zalm', '492662523-7', 60, 1, 2);
insert into products (name, description, code, price, categories_id, colours_id) values ('BlueFish', 'Very very cheap 1 pound fish', '346814286-8', 70, 1, 6);
insert into products (name, description, code, price, categories_id, colours_id) values ('Koi Fish', 'Very very good 1 pound fish', '013578479-0', 100, 4, 7);
insert into products (name, description, code, price, categories_id, colours_id) values ('Crab', 'Very very good 1 pound crab', '293829104-4', 50, 2, 4);
insert into products (name, description, code, price, categories_id, colours_id) values ('Mussel', 'Very very good 1 pound mussel', '820451759-9', 10, 2, 6);
insert into products (name, description, code, price, categories_id, colours_id) values ('WhaleShark', 'Very very good 1000 pound WhaleShark', '239471047-6', 10000, 3, 6);
insert into products (name, description, code, price, categories_id, colours_id) values ('Lionfish', 'Very very good 1 pound lionfish', '930284917-3', 100, 3, 7);
insert into products (name, description, code, price, categories_id, colours_id) values ('Devils Hole PupFish', 'Very very good 1 pound devils hole pupfish', '7283928193-2', 200, 3, 5);
insert into products (name, description, code, price, categories_id, colours_id) values ('BlueFin tuna', 'Very very good 500 pound BlueFin tuna', '283049123-8', 150, 3, 5);
insert into products (name, description, code, price, categories_id, colours_id) values ('Lobster', 'Very very good 1 pound Lobster', '819238471-2', 15, 2, 4);
insert into products (name, description, code, price, categories_id, colours_id) values ('Oyster', 'Very very good 1 pound Oyster', '728394012-2', 20, 2, 1);
insert into products (name, description, code, price, categories_id, colours_id) values ('The Betta', 'Very very good 1 pound The Betta', '829374213-4', 60, 4, 7);
insert into products (name, description, code, price, categories_id, colours_id) values ('Gold Fish', 'Very very good 1 pound Gold fish', '639201923-4', 30, 4, 8);
insert into products (name, description, code, price, categories_id, colours_id) values ('Guppies', 'Very very good 1 pound Guppies', '718293847-4', 60, 4, 7);
insert into products (name, description, code, price, categories_id, colours_id) values ('test', 'Very very cheap 1 pound test', '234146738-0', 10, 1, 1);
insert into products (name, description, code, price, categories_id, colours_id) values ('2', 'Very very cheap 1 pound 2', '634357259-0', 10, 1, 1);
insert into products (name, description, code, price, categories_id, colours_id) values ('Barrango', 'Very very good 1 pound Barrango', '532465785-7', 10000, 3, 6);
insert into products (name, description, code, price, categories_id, colours_id) values ('Angelfish', 'Very very good 1000 pound Angelfish', '231546756-0', 10000, 3, 6);
insert into products (name, description, code, price, categories_id, colours_id) values ('Arowana', 'Very very good 1000 pound Arowana', '233409865-6', 10000, 3, 6);

insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('Elizabeth', 'Smith', 'elizasmith32@gmail.com', '0648362973', 'Tulpweg 44, Rotterdam');
insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('James', 'Williams', 'willj77@hotmail.com', '0617582374', 'Schilderswijk 86, Den Haag');
insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('Mellisa', 'Collins', 'mellisacol123@outlook.com', '0694371326', 'Molenweg 12, Amsterdam');
insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('Taylor', 'Holland', 'amazingtay69@gmail.com', '0684215980', 'Klompstraat 75, Utrecht');

insert into reviews (products_id, customers_id, comment_text, rating) values (1, 1, 'Kabeljauw was very delicious!', 7.9);
insert into reviews (products_id, customers_id, comment_text, rating) values (19, 3, 'The Guppies are really cute, I love them a lot!', 8.8);
