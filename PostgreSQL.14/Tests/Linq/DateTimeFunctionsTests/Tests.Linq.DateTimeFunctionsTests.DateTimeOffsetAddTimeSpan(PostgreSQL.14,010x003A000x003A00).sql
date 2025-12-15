-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ts Interval -- Object
SET     @ts = 01:00:00

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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."DateTimeOffset",
	t1."DateTimeOffsetNullable"
FROM
	"DateTypesOffset" t1

