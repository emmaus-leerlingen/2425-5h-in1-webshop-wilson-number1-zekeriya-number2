




CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2), -- 10 staat voor hoe veel getallen het maximaal erin kan hebben, de 2 voor hoeveel decimalen. Bijvoorbeeld 99999999,99 is het grootste getal.
  categories_id INTEGER
);

CREATE TABLE categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
);

CREATE TABLE colours (
id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
);

CREATE TABLE customers (
  id INTEGER PRIMARY KEY AUTOINCREMENT
  FirstName VARCHAR(255),
  LastName(255),
  Email(255),
  PhoneNumber(255),
  Addresses(255),
  description TEXT,

CREATE TABLE reviews (
id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  customers_id INTEGER,
  comment_text TEXT,
  rating NUMERIC(2,1), 
 FOREIGN KEY (products_id) REFERENCES products(products_id), -- Foreign key is om iets in een tabel te koppelen met de primary key in een andere tabel, opgezocht op internet.
 FOREIGN KEY (customers_id) REFERENCES customers(customers_id),
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, categories_id, colours) values ('Kabeljauw', 'Very very cheap 1 pound kabeljauw', '816905633-0', 10, 1, 1);
insert into products (name, description, code, price, categories_id, colours) values ('Forel', 'Very very good 1 pound Forel', '077030122-3', 20, 1, 2);
insert into products (name, description, code, price, categories_id, colours) values ('Fish Zekeriya', 'Limited Edition. Only 1 in the world!', '445924201-X', 1000000, 3);
insert into products (name, description, code, price, categories_id, colours) values ('Sliptong', 'Very very good 1 pound Sliptong', '693155505-7', 30, 1, 3);
insert into products (name, description, code, price, categories_id, colours) values ('Dorade', 'Very very good 1 pound Dorade', '686928463-6', 40, 1, 4);
insert into products (name, description, code, price, categories_id, colours) values ('Zalm', 'Very very good 1 pound Zalm', '492662523-7', 60, 1, 2);
insert into products (name, description, code, price, categories_id, colours) values ('BlueFish', 'Very very cheap 1 pound fish', '346814286-8', 70, 1, 5);
insert into products (name, description, code, price, categories_id, colours) values ('Koi Fish', 'Very very good 1 pound fish', '013578479-0', 100, 4, 7);
insert into products (name, description, code, price, categories_id, colours) values ('Crab', 'Very very good 1 pound crab', '293829104-4', 50, 2, 4);
insert into products (name, description, code, price, categories_id, colours) values ('mussel', 'Very very good 1 pound mussel', '820451759-9', 10, 2, 6);
insert into products (name, description, code, price, categories_id, colours) values ('WhaleShark', 'Very very good 1000 pound WhaleShark', '239471047-6', 10000, 3, 6);
insert into products (name, description, code, price, categories_id, colours) values ('Lionfish', 'Very very good 1 pound lionfish', '930284917-3', 100, 3, 7);
insert into products (name, description, code, price, categories_id, colours) values ('Devils Hole PupFish', 'Very very good 1 pound devils hole pupfish', '7283928193-2', 200, 3, 5);
insert into products (name, description, code, price, categories_id, colours) values ('BlueFin tuna', 'Very very good 500 pound BlueFin tuna', '283049123-8', 150, 3, 5);
insert into products (name, description, code, price, categories_id, colours) values ('Lobster', 'Very very good 1 pound Lobster', '819238471-2', 15, 2, 4);
insert into products (name, description, code, price, categories_id, colours) values ('Oyster', 'Very very good 1 pound Oyster', '728394012-2', 20, 2, 1);
insert into products (name, description, code, price, categories_id, colours) values ('The Betta', 'Very very good 1 pound The Betta', '829374213-4', 60, 4, 7);
insert into products (name, description, code, price, categories_id, colours) values ('Gold Fish', 'Very very good 1 pound Gold fish', '639201923-4', 30, 4, 8);
insert into products (name, description, code, price, categories_id, colours) values ('Guppies', 'Very very good 1 pound Guppies', '718293847-4', 60, 4, 7);


insert into categories (name, description) values ('Fish', 'Fish');
insert into categories (name, description) values ('ShellFish', 'ShellFish');
insert into categories (name, description) values ('Exotic Fish', 'exotic Fish');
insert into categories (name, description) values ('Pet Fish', 'Pet Fish');

insert into colours (name) values ('Brown');
insert into colours (name) values ('grey');
insert into colours (name) values ('green');
insert into colours (name) values ('red');
insert into colours (name) values ('blue');
insert into colours (name) values ('black');
insert into colours (name) values ('mix');
insert into colours (name) values ('orange');

insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('Elizabeth', 'Smith', 'elizasmith32@gmail.com', '0648362973', 'Tulpweg 44, Rotterdam');
insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('James', 'Williams', 'willj77@hotmail.com', '0617582374', 'Schilderswijk 86, Den Haag');
insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('Mellisa', 'Collins', 'mellisacol123@outlook.com', '0694371326', 'Molenweg 12, Amsterdam');
insert into customers (FirstName, LastName, Email, PhoneNumber, Addresses) values ('Taylor', 'Holland', 'amazingtay69@gmail.com', '0684215980', 'Klompstraat 75, Utrecht');

insert into reviews (products_id, customers_id, comment_text, rating) values (1, 1, 'Kabeljauw was very delicious!', 7.9);
insert into reviews (products_id, customers_id, comment_text, rating) values (19, 3, 'The Guppies are really cute, i love them a lot!', 8.8);