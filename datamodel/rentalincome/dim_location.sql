create table rentalincome.dim_location
(
    location_id  integer not null
        constraint pk_dim_location
            primary key,
    street       varchar(100),
    neighborhood varchar(100)
);

alter table rentalincome.dim_location
    owner to gulnur;

