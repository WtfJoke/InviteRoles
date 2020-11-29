CREATE TABLE INVITES
(
	invite_code VARCHAR(20) not null
		primary key,
	guild_id BIGINT
);

CREATE TABLE INVITES_ROLES
(
	invite_code VARCHAR(20) not null,
	roles BIGINT not null,
	constraint FK_INVITES_ROLES_INVITES
		foreign key (invite_code) references INVITES (invite_code)
);

CREATE TABLE SETTINGS
(
	guild_id BIGINT not null
		primary key,
	language VARCHAR(10) not null,
	notification_channel BIGINT,
	notifications BOOLEAN not null
);

