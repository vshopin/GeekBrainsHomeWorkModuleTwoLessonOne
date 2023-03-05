create table if not exists `countries`
(
    `id` int auto_increment,
    `name` varchar(30),
    primary key (id)
);

create table if not exists `areas`
(
    `id` int auto_increment,
    `name` varchar(30),
    `countrie_id` int,
    primary key (id)
);

create table if not exists `cities`
(
    `id` int auto_increment,
    `name` varchar(30),
    `area_id` int,
    primary key (id)
);