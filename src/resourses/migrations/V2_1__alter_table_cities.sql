alter table _cities drop `area_ru`, drop`title_ua`, drop area_ua, drop region_ua, drop title_be, drop area_be, drop region_be, drop title_en, drop area_en, drop region_en,
    drop title_es, drop area_es, drop region_es, drop title_pt, drop area_pt, drop region_pt, drop title_de, drop area_de, drop region_de, drop title_fr, drop area_fr, drop region_fr,
    drop title_it, drop area_it, drop region_it, drop title_pl, drop area_pl, drop region_pl, drop title_ja, drop area_ja, drop region_ja, drop title_lt, drop area_lt, drop region_lt,
    drop title_lv, drop area_lv, drop region_lv, drop title_cz, drop area_cz, drop region_cz;

alter table _cities
    change column city_id id int not null auto_increment primary key,
    change title_ru title varchar(150);
alter table _cities add index(title);
alter table _cities add foreign key (country_id) references _countries(id);
alter table _cities add foreign key (region_id) references _regions(id);