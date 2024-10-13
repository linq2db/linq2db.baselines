BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DateTypes"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "DateTypes"
(
	"Id"                Int       NOT NULL,
	"DateTime"          TimeStamp NOT NULL,
	"DateTimeNullable"  TimeStamp     NULL,
	"DateTime2"         TimeStamp NOT NULL,
	"DateTime2Nullable" TimeStamp     NULL,

	CONSTRAINT "PK_DateTypes" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTime Timestamp -- DateTime2
SET     @DateTime = '2020-02-29 17:54:55.123'::timestamp
DECLARE @DateTimeNullable Timestamp -- DateTime2
SET     @DateTimeNullable = '2020-02-29 17:54:55.123'::timestamp
DECLARE @DateTime2 Timestamp -- DateTime2
SET     @DateTime2 = '2020-02-29 17:54:55.123'::timestamp
DECLARE @DateTime2Nullable Timestamp -- DateTime2
SET     @DateTime2Nullable = '2020-02-29 17:54:55.123'::timestamp

INSERT INTO "DateTypes"
(
	"Id",
	"DateTime",
	"DateTimeNullable",
	"DateTime2",
	"DateTime2Nullable"
)
VALUES
(
	:Id,
	:DateTime,
	:DateTimeNullable,
	:DateTime2,
	:DateTime2Nullable
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTime Timestamp -- DateTime2
SET     @DateTime = '2020-02-29 17:54:55.123'::timestamp
DECLARE @DateTimeNullable Timestamp -- DateTime2
SET     @DateTimeNullable = NULL
DECLARE @DateTime2 Timestamp -- DateTime2
SET     @DateTime2 = '2020-02-29 17:54:55.123'::timestamp
DECLARE @DateTime2Nullable Timestamp -- DateTime2
SET     @DateTime2Nullable = NULL

INSERT INTO "DateTypes"
(
	"Id",
	"DateTime",
	"DateTimeNullable",
	"DateTime2",
	"DateTime2Nullable"
)
VALUES
(
	:Id,
	:DateTime,
	:DateTimeNullable,
	:DateTime2,
	:DateTime2Nullable
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ts Interval -- Object
SET     @ts = 02:00:00

SELECT
	t."Id",
	t."DateTime" + :ts,
	t."DateTimeNullable" + :ts,
	t."DateTime2" + :ts,
	t."DateTime2Nullable" + :ts,
	t."DateTime" - :ts,
	t."DateTimeNullable" - :ts,
	t."DateTime2" - :ts,
	t."DateTime2Nullable" - :ts,
	t."DateTime" + :ts,
	t."DateTimeNullable" + :ts,
	t."DateTime2" + :ts,
	t."DateTime2Nullable" + :ts
FROM
	"DateTypes" t
UNION ALL
SELECT
	t_1."Id",
	t_1."DateTime" + :ts,
	t_1."DateTimeNullable" + :ts,
	t_1."DateTime2" + :ts,
	t_1."DateTime2Nullable" + :ts,
	t_1."DateTime" - :ts,
	t_1."DateTimeNullable" - :ts,
	t_1."DateTime2" - :ts,
	t_1."DateTime2Nullable" - :ts,
	t_1."DateTime" + :ts,
	t_1."DateTimeNullable" + :ts,
	t_1."DateTime2" + :ts,
	t_1."DateTime2Nullable" + :ts
FROM
	"DateTypes" t_1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."DateTime",
	t1."DateTimeNullable",
	t1."DateTime2",
	t1."DateTime2Nullable"
FROM
	"DateTypes" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DateTypes"

