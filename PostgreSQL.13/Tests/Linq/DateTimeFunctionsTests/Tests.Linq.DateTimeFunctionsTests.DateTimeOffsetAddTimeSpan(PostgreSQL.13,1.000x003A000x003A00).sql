﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DateTypesOffset"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DateTypesOffset"
(
	"Id"                     Int         NOT NULL,
	"DateTimeOffset"         TimeStampTZ NOT NULL,
	"DateTimeOffsetNullable" TimeStampTZ     NULL,

	CONSTRAINT "PK_DateTypesOffset" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @:p1 TimestampTz -- DateTime
SET     @:p1 = '2020-02-29T17:14:55.1231234+00:00'
DECLARE @:p2 TimestampTz -- DateTime
SET     @:p2 = '2020-02-29T17:14:55.1231234+00:00'
DECLARE @:p3 TimestampTz -- DateTime
SET     @:p3 = '2020-02-29T17:14:55.1231234+00:00'

INSERT INTO "DateTypesOffset"
(
	"Id",
	"DateTimeOffset",
	"DateTimeOffsetNullable"
)
VALUES
(1,:p1,:p2),
(2,:p3,NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ts Interval -- Object
SET     @ts = 1.00:00:00

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."DateTimeOffset",
	t1."DateTimeOffsetNullable"
FROM
	"DateTypesOffset" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DateTypesOffset"

