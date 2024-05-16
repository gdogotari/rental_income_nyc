create table rentalincome.dim_date
(
    date_id    integer not null
        constraint pk_dim_yearbuilt
            primary key,
    year_built integer
);

alter table rentalincome.dim_date
    owner to gulnur;

