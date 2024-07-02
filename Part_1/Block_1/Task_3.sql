create table users (id          number not null,
                    primary key (id),
                    name        varchar2(128) ,
                    middle_name varchar2(128),
                    last_name   varchar2(128),
                    job_title   varchar2(128),
                    phone       number);
create table clients(id               number not null,
                    primary key (id),
                    name              varchar2(128),
                    middle_name       varchar2(128),
                    last_name         varchar2(128),
                    job_title         varchar2(128),
                    phone             number,
                    foreign key (organization_name) references organizations (name) );
create table organizations(name        varchar2(128),
                           primary key (name),
                           adress      varchar2(1024),
                           phone       number);
create table documents(id              number,
                    primary key (id),
                    date               to_date('dd.MM.YYYY. hh24:mm:ss'),
                    foreign key (id_user) references users (id),
                    foreign key (id_client) references clients(id),
                    status             varchar2(64));

