create table rentalincome.facts_rentalincome
(
    fact_id                bigint  not null
        constraint pk_facts_rentalincome
            primary key,
    condo_id               integer not null
        constraint fk_facts_rentalincome_dim_condo
            references rentalincome.dim_condo,
    date_id                integer not null
        constraint fk_facts_rentalincome_dim_date
            references rentalincome.dim_date,
    gross_sqft             integer,
    estimated_gross_income integer,
    gross_income_per_sqft  numeric(100, 2),
    estimated_expense      integer,
    expense_per_sqft       numeric(100, 2),
    netoperating_income    integer,
    full_marketvalue       integer,
    marketvalue_per_sqft   numeric(100, 2),
    buildingclass_id       integer not null
        constraint fk_facts_rentalincome_dim_buildingclass
            references rentalincome.dim_buildingclass,
    location_id            integer not null
        constraint fk_facts_rentalincome_dim_location
            references rentalincome.dim_location,
    total_units            integer
);

alter table rentalincome.facts_rentalincome
    owner to gulnur;

