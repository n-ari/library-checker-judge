create table user(
  id int primary key,
  name varchar(255) unique not null,
  passhash varchar(255)
);

create table problem(
  name varchar(255) primary key,
  testhash varchar(255),
  testzip longblob
);

create table submittion(
  id int primary key auto_increment, #incremental?
  submittime DATETIME,
  user int, #null ok
  problem VARCHAR(32) not null,
  lang VARCHAR(32) not null,
  source MEDIUMTEXT not null,
  status VARCHAR(32), # AC, WA, TLE, WJ, ...
  maxtime int,
  maxmemory int,
  details json
);

create table queue( # Between front and judge
  id int primary key auto_increment,
  submittion int not null
);