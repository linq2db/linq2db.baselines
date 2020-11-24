BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "NC_CODE"
(
	"HANDLE"             text      NOT NULL,
	"CHANGE_STAMP"       Decimal       NULL,
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
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "NC_GROUP_MEMBER"
(
	"HANDLE"               text    NOT NULL,
	"NC_GROUP_BO"          text        NULL,
	"NC_CODE_OR_GROUP_GBO" text        NULL,
	"SEQUENCE"             Decimal     NULL
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "NC_GROUP_MEMBER"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "NC_CODE"

