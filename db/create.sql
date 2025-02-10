--
-- create tables
--

CREATE TABLE WaterType(
 id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,



)

CREATE TABLE categories(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,


)

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Kabeljauw', 'Very very cheap 1 pound fish', '816905633-0', 10);
insert into products (name, description, code, price) values ('Forel', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 20);
insert into products (name, description, code, price) values ('Fish Zekeriya', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 50);
insert into products (name, description, code, price) values ('Sliptong', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 30);
insert into products (name, description, code, price) values ('Dorade', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 40);
insert into products (name, description, code, price) values ('Zalm', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 60);
insert into products (name, description, code, price) values ('BlueFish', 'Very very cheap 1 pound fish', '346814286-8', 70);
insert into products (name, description, code, price) values ('Koi Fish', 'Very very good 1 pound fish', '013578479-0', 100);

insert into catagories(name, description) values('Fish', 'Fish');
insert into catagories(name, description) values('ShellFish', 'ShellFish');
insert into catagories(name, description) values('Exotic Fish', 'exotic Fish');
insert into catagories(name, description) values('Pet Fish', 'Pet Fish');



