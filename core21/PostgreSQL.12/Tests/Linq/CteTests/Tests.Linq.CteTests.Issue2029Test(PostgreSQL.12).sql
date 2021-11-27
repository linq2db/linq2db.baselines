﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "NC_CODE"
(
	"HANDLE"             text      NOT NULL,
	"CHANGE_STAMP"       decimal       NULL,
	"SITE"               text          NULL,
	"NC_CODE"            text          NULL,
	"DESCRIPTION"        text          NULL,
	"STATUS_BO"          text          NULL,
	"CREATED_DATE_TIME"  TimeStamp     NULL,
	"MODIFIED_DATE_TIME" TimeStamp     NULL,
	"NC_CATEGORY"        text          NULL,
	"DPMO_CATEGORY_BO"   text          NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "NC_GROUP_MEMBER"
(
	"HANDLE"               text    NOT NULL,
	"NC_GROUP_BO"          text        NULL,
	"NC_CODE_OR_GROUP_GBO" text        NULL,
	"SEQUENCE"             decimal     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NC_GROUP_MEMBER"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NC_CODE"

