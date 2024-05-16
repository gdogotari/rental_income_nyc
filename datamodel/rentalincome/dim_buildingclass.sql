create table rentalincome.dim_buildingclass
(
    buildingclass_id          integer not null
        constraint pk_dim_buildingclass
            primary key,
    buildingclass_description varchar(100)
);

alter table rentalincome.dim_buildingclass
    owner to gulnur;

