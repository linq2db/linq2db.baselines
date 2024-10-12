BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DateTypesOffset"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "DateTypesOffset"
(
	"Id"                     Int         NOT NULL,
	"DateTimeOffset"         TimeStampTZ NOT NULL,
	"DateTimeOffsetNullable" TimeStampTZ     NULL,

	CONSTRAINT "PK_DateTypesOffset" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTimeOffset TimestampTz -- DateTime
SET     @DateTimeOffset = '2020-02-29T17:14:55.1231234+00:00'
DECLARE @DateTimeOffsetNullable TimestampTz -- DateTime
SET     @DateTimeOffsetNullable = '2020-02-29T17:14:55.1231234+00:00'

INSERT INTO "DateTypesOffset"
(
	"Id",
	"DateTimeOffset",
	"DateTimeOffsetNullable"
)
VALUES
(
	:Id,
	:DateTimeOffset,
	:DateTimeOffsetNullable
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTimeOffset TimestampTz -- DateTime
SET     @DateTimeOffset = '2020-02-29T17:14:55.1231234+00:00'
DECLARE @DateTimeOffsetNullable TimestampTz -- DateTime
SET     @DateTimeOffsetNullable = NULL

INSERT INTO "DateTypesOffset"
(
	"Id",
	"DateTimeOffset",
	"DateTimeOffsetNullable"
)
VALUES
(
	:Id,
	:DateTimeOffset,
	:DateTimeOffsetNullable
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ts Interval -- Object
SET     @ts = 1.00:00:01

SELECT
	t."Id",
	t."DateTimeOffset" + :ts,
	t."DateTimeOffsetNullable" + :ts,
	t."DateTimeOffset" - :ts,
	t."DateTimeOffsetNullable" - :ts,
	t."DateTimeOffset" + :ts,
	t."DateTimeOffsetNullable" + :ts
FROM
	"DateTypesOffset" t
UNION ALL
SELECT
	t_1."Id",
	t_1."DateTimeOffset" + :ts,
	t_1."DateTimeOffsetNullable" + :ts,
	t_1."DateTimeOffset" - :ts,
	t_1."DateTimeOffsetNullable" - :ts,
	t_1."DateTimeOffset" + :ts,
	t_1."DateTimeOffsetNullable" + :ts
FROM
	"DateTypesOffset" t_1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."DateTimeOffset",
	t1."DateTimeOffsetNullable"
FROM
	"DateTypesOffset" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DateTypesOffset"

