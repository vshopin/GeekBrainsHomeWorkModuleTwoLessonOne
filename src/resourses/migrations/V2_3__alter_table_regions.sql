alter table _regions
    drop title_ua,
    drop title_be,
    drop title_en,
    drop title_es,
    drop title_pt,
    drop title_de,
    drop title_fr,
    drop title_it,
    drop title_pl,
    drop title_ja,
    drop title_lt,
    drop title_lv,
    drop title_cz;
alter table _regions
    change column region_id id int not null auto_increment primary key,
    change column title_ru title varchar(150) not null;
alter table _regions add index(title);
alter table _regions add foreign key (country_id) references _countries(id);
