create table species (
    id serial primary key,
    name varchar(100)
);

create table enclosure (
    id serial primary key,
    name varchar(100),
    size real,
    location varchar(100),
    description text
);

create table animal (
    id serial primary key,
    name varchar(100),
    species_id integer references species(id),
    enclosure_id integer references enclosure(id),
    date_of_birth date,
    date_of_arrival date,
    sex varchar(7)
);

create table health_record (
    id serial primary key,
    animal_id integer references animal(id),
    checkup_date date,
    notes text
);

create table employee (
    id serial primary key,
    name varchar(100),
    position varchar(50),
    phone varchar(15),
    hire_date date
);

create table animal_caretaker (
	id serial primary key,
    animal_id integer references animal(id),
    employee_id integer references employee(id)
);

create table feed (
    id serial primary key,
    name varchar(100),
    description text
);

create table animal_feed (
    id serial primary key,
    animal_id integer references animal(id),
    feed_id integer references feed(id),
    daily_amount real
);

create table offspring (
    id serial primary key,
    mother_id integer references animal(id),
    father_id integer references animal(id),
    name varchar(100),
    date_of_birth date,
    sex varchar(7)
);
