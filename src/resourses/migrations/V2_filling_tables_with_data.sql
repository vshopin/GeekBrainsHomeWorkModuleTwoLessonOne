insert into countries (name)
values ('Russia'),
       ('USA'),
       ('Germany');

insert into areas (name, country_id)
values ('Moscow_area', (select id from countries where countries.name = 'Russia')),
       ('Novosibirsk_area', (select id from countries where countries.name = 'Russia')),
       ('Sochi_area', (select id from countries where countries.name = 'Russia')),
       ('Texas', (select id from countries where countries.name = 'USA')),
       ('California', (select id from countries where countries.name = 'USA')),
       ('Utah', (select id from countries where countries.name = 'USA')),
       ('Berlin_area', (select id from countries where countries.name = 'Germany')),
       ('Hamburg_area', (select id from countries where countries.name = 'Germany')),
       ('Bavaria_area', (select id from countries where countries.name = 'Germany'));

insert into cities (name, area_id)
values ('Moscow', (select id from areas where areas.name = 'Moscow_area')),
       ('Dmitrov', (select id from areas where areas.name = 'Moscow_area')),
       ('Podolsk', (select id from areas where areas.name = 'Moscow_area')),
       ('Novosibirsk', (select id from areas where areas.name = 'Novosibirsk_area')),
       ('Karasuk', (select id from areas where areas.name = 'Novosibirsk_area')),
       ('Berdsk', (select id from areas where areas.name = 'Novosibirsk_area')),
       ('Sochi', (select id from areas where areas.name = 'Sochi_area')),
       ('Golovinka', (select id from areas where areas.name = 'Sochi_area')),
       ('Vishnevka', (select id from areas where areas.name = 'Sochi_area')),
       ('Ostin', (select id from areas where areas.name = 'Texas')),
       ('Dallas', (select id from areas where areas.name = 'Texas')),
       ('Huston', (select id from areas where areas.name = 'Texas')),
       ('Los-Angeles', (select id from areas where areas.name = 'California')),
       ('San-Fracisco', (select id from areas where areas.name = 'California')),
       ('Sacramento', (select id from areas where areas.name = 'California')),
       ('Salt-Lake-City', (select id from areas where areas.name = 'Utah')),
       ('Beaver', (select id from areas where areas.name = 'Utah')),
       ('Richfield', (select id from areas where areas.name = 'Utah')),
       ('Berlin', (select id from areas where areas.name = 'Berlin_area')),
       ('Schönefeld', (select id from areas where areas.name = 'Berlin_area')),
       ('Ahrensfelde', (select id from areas where areas.name = 'Berlin_area')),
       ('Hamburg', (select id from areas where areas.name = 'Hamburg_area')),
       ('Iserbrook', (select id from areas where areas.name = 'Hamburg_area')),
       ('Barsbüttel', (select id from areas where areas.name = 'Hamburg_area')),
       ('München', (select id from areas where areas.name = 'Bavaria_area')),
       ('Augsburg', (select id from areas where areas.name = 'Bavaria_area')),
       ('Erding', (select id from areas where areas.name = 'Bavaria_area'));