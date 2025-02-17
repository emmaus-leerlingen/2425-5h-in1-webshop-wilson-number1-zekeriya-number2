




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

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, category_id) values ('Kabeljauw', 'Very very cheap 1 pound fish', '816905633-0', 10, 1);
insert into products (name, description, code, price, category_id) values ('Forel', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 20, 1);
insert into products (name, description, code, price, category_id) values ('Fish Zekeriya', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 50, 3);
insert into products (name, description, code, price, category_id) values ('Sliptong', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 30, 1);
insert into products (name, description, code, price, category_id) values ('Dorade', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 40, 1);
insert into products (name, description, code, price, category_id) values ('Zalm', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 60, 1);
insert into products (name, description, code, price, category_id) values ('BlueFish', 'Very very cheap 1 pound fish', '346814286-8', 70, 1);
insert into products (name, description, code, price, category_id) values ('Koi Fish', 'Very very good 1 pound fish', '013578479-0', 100, 4);
insert into products (name, description, code, price, category_id) values ('Crab', 'Very very good 1 pound crab', '293829104-4', 100, 2);
insert into products (name, description, code, price, category_id) values ('mussel', 'Very very good 1 pound mussel', '820451759-9', 100, 2);
insert into products (name, description, code, price, category_id) values ('WhaleShark', 'Very very good 1000 pound WhaleShark', '239471047-6', 100, 3);
insert into products (name, description, code, price, category_id) values ('Lionfish', 'Very very good 1 pound lionfish', '930284917-3', 100, 3);
insert into products (name, description, code, price, category_id) values ('Devils Hole PupFish', 'Very very good 1 pound devvils hole pupfish', '7283928193-2', 100, 3);
insert into products (name, description, code, price, category_id) values ('BlueFin tuna', 'Very very good 500 pound BlueFin tuna', '283049123-8', 100, 3);
insert into products (name, description, code, price, category_id) values ('Lobster', 'Very very good 1 pound Lobster', '819238471-2', 100, 2);
insert into products (name, description, code, price, category_id) values ('Oyster', 'Very very good 1 pound Oyster', '728394012-2', 100, 2);

insert into categories(name, description) values('Fish', 'Fish');
insert into categories(name, description) values('ShellFish', 'ShellFish');
insert into categories(name, description) values('Exotic Fish', 'exotic Fish');
insert into categories(name, description) values('Pet Fish', 'Pet Fish');



