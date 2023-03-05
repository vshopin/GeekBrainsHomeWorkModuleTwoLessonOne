create table if not exists `countries`
(
    `id` int auto_increment primary key,
    `name` varchar(30)
);

create table if not exists `areas`
(
    `id` int auto_increment primary key,
    `name` varchar(30),
    `country_id` int
);

create table if not exists `cities`
(
    `id` int auto_increment primary key,
    `name` varchar(30),
    `area_id` int
);