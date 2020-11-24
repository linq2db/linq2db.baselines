BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Issue1110TB"
(
	"Id"        Int       NOT NULL,
	"TimeStamp" TimeStamp NOT NULL,

	CONSTRAINT "PK_Issue1110TB" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1 Timestamp -- DateTime
SET     @TimeStamp_1 = '2020-02-29 17:54:55.123'::timestamp

INSERT INTO "Issue1110TB"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	:Id,
	:TimeStamp_1
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Issue1110TB"

