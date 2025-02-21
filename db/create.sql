




CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  category_id INTEGER
);

CREATE TABLE categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
);

CREATE TABLE habitat (
id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
);

CREATE TABLE land (
id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
);

CREATE TABLE geographical (
id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, category_id) values ('Kabeljauw', 'Very very cheap 1 pound kabeljauw', '816905633-0', 10, 1);
insert into products (name, description, code, price, category_id) values ('Forel', 'Very very good 1 pound Forel', '077030122-3', 20, 1);
insert into products (name, description, code, price, category_id) values ('Fish Zekeriya', 'Limited Edition. Only 1 in the world!', '445924201-X', 1000000, 3);
insert into products (name, description, code, price, category_id) values ('Sliptong', 'Very very good 1 pound Sliptong', '693155505-7', 30, 1);
insert into products (name, description, code, price, category_id) values ('Dorade', 'Very very good 1 pound Dorade', '686928463-6', 40, 1);
insert into products (name, description, code, price, category_id) values ('Zalm', 'Very very good 1 pound Zalm', '492662523-7', 60, 1);
insert into products (name, description, code, price, category_id) values ('BlueFish', 'Very very cheap 1 pound fish', '346814286-8', 70, 1);
insert into products (name, description, code, price, category_id) values ('Koi Fish', 'Very very good 1 pound fish', '013578479-0', 100, 4);
insert into products (name, description, code, price, category_id) values ('Crab', 'Very very good 1 pound crab', '293829104-4', 50, 2);
insert into products (name, description, code, price, category_id) values ('mussel', 'Very very good 1 pound mussel', '820451759-9', 10, 2);
insert into products (name, description, code, price, category_id) values ('WhaleShark', 'Very very good 1000 pound WhaleShark', '239471047-6', 10000, 3);
insert into products (name, description, code, price, category_id) values ('Lionfish', 'Very very good 1 pound lionfish', '930284917-3', 100, 3);
insert into products (name, description, code, price, category_id) values ('Devils Hole PupFish', 'Very very good 1 pound devils hole pupfish', '7283928193-2', 200, 3);
insert into products (name, description, code, price, category_id) values ('BlueFin tuna', 'Very very good 500 pound BlueFin tuna', '283049123-8', 150, 3);
insert into products (name, description, code, price, category_id) values ('Lobster', 'Very very good 1 pound Lobster', '819238471-2', 15, 2);
insert into products (name, description, code, price, category_id) values ('Oyster', 'Very very good 1 pound Oyster', '728394012-2', 20, 2);
insert into products (name, description, code, price, category_id) values ('The Betta', 'Very very good 1 pound The Betta', '829374213-4', 60, 4);
insert into products (name, description, code, price, category_id) values ('Gold Fish', 'Very very good 1 pound Gold fish', '639201923-4', 30, 4);
insert into products (name, description, code, price, category_id) values ('Guppies', 'Very very good 1 pound Guppies', '718293847-4', 60, 4);


insert into categories(name, description) values('Fish', 'Fish');
insert into categories(name, description) values('ShellFish', 'ShellFish');
insert into categories(name, description) values('Exotic Fish', 'exotic Fish');
insert into categories(name, description) values('Pet Fish', 'Pet Fish');



