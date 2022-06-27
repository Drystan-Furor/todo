create table TODOS
(
    ID           uuid,
    USER_ID      uuid                                   not null,
    STATUS       varchar(3)                             not null,
    TITLE        varchar(255)                           not null,
    DESCRIPTION  text,
    CREATED_ON   timestamp with time zone default NOW() not null,
    LAST_UPDATED timestamp with time zone default NOW() not null,
    DISABLED_ON  timestamp with time zone
);
alter table TODOS
    add constraint TODOS_PK primary key (ID);

alter table TODOS
    add constraint TODOS_FK_1 foreign key (USER_ID) references USERS (ID) on delete cascade;
