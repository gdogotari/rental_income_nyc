CREATE SCHEMA IF NOT EXISTS "instance";

CREATE  TABLE "instance".dim_buildingclass ( 
	buildingclass_id     integer  NOT NULL  ,
	buildingclass_description varchar(100)    ,
	CONSTRAINT pk_dim_buildingclass PRIMARY KEY ( buildingclass_id )
 );

CREATE  TABLE "instance".dim_condo ( 
	condo_id             integer  NOT NULL  ,
	boro_block_lot       varchar(100)    ,
	condo_section        varchar(100)    ,
	CONSTRAINT pk_dim_condo PRIMARY KEY ( condo_id )
 );

CREATE  TABLE "instance".dim_date ( 
	date_id              integer  NOT NULL  ,
	year_built           integer    ,
	CONSTRAINT pk_dim_yearbuilt PRIMARY KEY ( date_id )
 );

CREATE  TABLE "instance".dim_location ( 
	location_id          integer  NOT NULL  ,
	street_number        integer    ,
	street               varchar(100)    ,
	neighborhood         varchar(100)    ,
	CONSTRAINT pk_dim_location PRIMARY KEY ( location_id )
 );

CREATE  TABLE "instance".facts_rentalincome ( 
	fact_id              bigint  NOT NULL  ,
	total_units          integer    ,
	condo_id             integer  NOT NULL  ,
	date_id              integer  NOT NULL  ,
	gross_sqft           integer    ,
	estimated_gross_income integer    ,
	gross_income_per_sqft numeric(100,2)    ,
	estimated_expense    integer    ,
	expense_per_sqft     numeric(100,2)    ,
	netoperating_income  integer    ,
	full_marketvalue     integer    ,
	marketvalue_per_sqft numeric(100,2)    ,
	buildingclass_id     integer  NOT NULL  ,
	location_id          integer  NOT NULL  ,
	CONSTRAINT pk_facts_rentalincome PRIMARY KEY ( fact_id, condo_id )
 );
