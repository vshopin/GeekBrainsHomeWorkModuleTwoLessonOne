insert into countries (name)
values ('Russia'),
       ('USA'),
       ('Germany');

select id into @russia_id from countries where countries.name = 'Russia';
select id into @usa_id from countries where countries.name = 'USA';
select id into @germany_id from countries where countries.name = 'Germany';

insert into areas (name, country_id)
values ('Moscow_area', @russia_id),
       ('Novosibirsk_area', @russia_id),
       ('Sochi_area', @russia_id),
       ('Texas', @usa_id),
       ('California', @usa_id),
       ('Utah', @usa_id),
       ('Berlin_area', @germany_id),
       ('Hamburg_area', @germany_id),
       ('Bavaria_area', @germany_id);

select id into @moscow_id from areas where areas.name = 'Moscow_area';
select id into @novosib_id from areas where areas.name = 'Novosibirsk_area';
select id into @sochi_id from areas where areas.name = 'Sochi_area';
select id into @texas_id from areas where areas.name = 'Texas';
select id into @california_id from areas where areas.name = 'California';
select id into @utah_id from areas where areas.name = 'Utah';
select id into @berlin_id from areas where areas.name = 'Berlin_area';
select id into @hamburg_id from areas where areas.name = 'Hamburg_area';
select id into @bavaria_id from areas where areas.name = 'Bavaria_area';

insert into cities (name, area_id)
values ('Moscow', @moscow_id),
       ('Dmitrov', @moscow_id),
       ('Podolsk', @moscow_id),
       ('Novosibirsk', @novosib_id),
       ('Karasuk', @novosib_id),
       ('Berdsk', @novosib_id),
       ('Sochi', @sochi_id),
       ('Golovinka', @sochi_id),
       ('Vishnevka', @sochi_id),
       ('Ostin', @texas_id),
       ('Dallas', @texas_id),
       ('Huston', @texas_id),
       ('Los-Angeles', @california_id),
       ('San-Fracisco', @california_id),
       ('Sacramento', @california_id),
       ('Salt-Lake-City', @utah_id),
       ('Beaver', @utah_id),
       ('Richfield', @utah_id),
       ('Berlin', @berlin_id),
       ('Schönefeld', @berlin_id),
       ('Ahrensfelde', @berlin_id),
       ('Hamburg', @hamburg_id),
       ('Iserbrook', @hamburg_id),
       ('Barsbüttel', @hamburg_id),
       ('München', @bavaria_id),
       ('Augsburg', @bavaria_id),
       ('Erding', @bavaria_id);