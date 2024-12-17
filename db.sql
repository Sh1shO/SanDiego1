create table species(
    id serial primary key,
    name varchar(100)
);

create table enclosure(
    id serial primary key,
    name varchar(100),
    size real,
    location varchar(100),
    description text
);

create table animal(
    id serial primary key,
    name varchar(100),
    species_id integer references species(id),
    enclosure_id integer references enclosure(id),
    date_of_birth date,
    date_of_arrival date,
    sex varchar(7)
);

create table health_record(
    id serial primary key,
    animal_id integer references animal(id),
    checkup_date date,
    notes text
);
