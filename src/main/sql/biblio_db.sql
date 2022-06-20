create table person(
                       person_id int
                           generated by default as identity
                           primary key ,
                       name varchar not null unique ,
                       date varchar not null
);

insert into person(name, date) VALUES ('Admin', '000-00-00');

create table book(
                     book_id int
                         generated by default as identity
                         primary key ,
                     person_id int default 1
                         references person(person_id)
                             on delete set default ,
                     title varchar not null ,
                     author varchar,
                     year int not null check ( year > 0 ) check ( year < 2023 )
);