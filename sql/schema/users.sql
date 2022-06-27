create table USERS
(
    ID            uuid,
    FIRST_NAME    varchar(255),
    INFIX         varchar(15),
    LAST_NAME     varchar(255),
    EMAIL         varchar(255) unique                    not null,
    PASSHASH      varchar(1024)                          not null,

    DATE_OF_BIRTH date,
    GENDER        varchar(8),

    STREET        varchar(255),
    STREET_NUMBER varchar(255),
    CITY          varchar(255),
    MUNICIPALITY  varchar(255),
    PROVINCE      varchar(255),
    COUNTRY_CODE  varchar(2),
    STATE         varchar(255),
    LATITUDE      varchar(255),
    LONGITUDE     varchar(255),

    CREATED_ON    timestamp with time zone default NOW() not null,
    LAST_UPDATED  timestamp with time zone default NOW() not null,
    DISABLED_ON   timestamp with time zone
);
alter table USERS
    add constraint USERS_PK primary key (ID);
create index USERS_I
    on USERS (DISABLED_ON);
