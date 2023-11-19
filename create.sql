create table authorities
(
    user_id   bigint not null,
    authority varchar(255) check (authority in ('ROLE_USER', 'ROLE_ADMIN'))
);
create table chat_themes
(
    id   bigserial not null,
    name varchar(255),
    primary key (id)
);
create table messages
(
    id               bigserial not null,
    greeting_list_id bigint,
    content          varchar(255),
    primary key (id)
);
create table users
(
    id         bigserial not null,
    enable     boolean,
    password   varchar(100),
    email      varchar(255),
    name       varchar(255),
    user_login varchar(255),
    primary key (id)
);
