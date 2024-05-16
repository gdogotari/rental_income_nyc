create table rentalincome.dim_condo
(
    condo_id       integer not null
        constraint pk_dim_condo
            primary key,
    boro_block_lot varchar(100),
    condo_section  varchar(100)
);

alter table rentalincome.dim_condo
    owner to gulnur;

