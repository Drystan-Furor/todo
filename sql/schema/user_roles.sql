create table USER_ROLES
(
    USER_ID   uuid,
    AUTHORITY varchar(225)
);
alter table USER_ROLES
    add constraint USER_ROLES_PK primary key (USER_ID, AUTHORITY);
alter table USER_ROLES
    add constraint USER_ROLES_FK_1 foreign key (USER_ID) references USERS (ID) on delete cascade;
create index USER_ROLES_FK_1_I
    on USER_ROLES (USER_ID)
