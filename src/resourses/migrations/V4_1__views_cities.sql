create or replace view city_info as
select _cities.title as city, _regions.title as region, _countries.title as country
    from _cities
    left join _regions on _regions.id = _cities.region_id
    left join _countries on _countries.id = _cities.country_id;

create or replace view region_info as
select _cities.title as city, _regions.title as region
    from _cities
    left join _regions on _regions.id = _cities.region_id
    where _regions.title='Московская область';

