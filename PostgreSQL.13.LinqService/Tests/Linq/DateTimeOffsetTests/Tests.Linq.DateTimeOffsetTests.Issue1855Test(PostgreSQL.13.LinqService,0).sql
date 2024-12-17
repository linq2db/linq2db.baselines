﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1855Table"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1855Table"
(
	"Id"                         Int         NOT NULL,
	"SomeDateTimeOffset"         TimeStampTZ NOT NULL,
	"SomeNullableDateTimeOffset" TimeStampTZ     NULL,

	CONSTRAINT "PK_Issue1855Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset TimestampTz -- DateTime
SET     @SomeDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'
DECLARE @SomeNullableDateTimeOffset TimestampTz -- DateTime
SET     @SomeNullableDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'

INSERT INTO "Issue1855Table"
(
	"Id",
	"SomeDateTimeOffset",
	"SomeNullableDateTimeOffset"
)
VALUES
(
	:Id,
	:SomeDateTimeOffset,
	:SomeNullableDateTimeOffset
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset TimestampTz -- DateTime
SET     @SomeDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'

INSERT INTO "Issue1855Table"
(
	"Id",
	"SomeDateTimeOffset"
)
VALUES
(
	:Id,
	:SomeDateTimeOffset
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @interval Integer -- Int32
SET     @interval = 10
DECLARE @clientSideIn TimestampTz -- DateTime
SET     @clientSideIn = '2019-08-08T08:08:18.0000000+00:00'

SELECT
	r."Id",
	r."SomeDateTimeOffset",
	r."SomeNullableDateTimeOffset"
FROM
	"Issue1855Table" r
WHERE
	r."SomeDateTimeOffset" + :interval * Interval '1 Second' >= :clientSideIn

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1855Table"

