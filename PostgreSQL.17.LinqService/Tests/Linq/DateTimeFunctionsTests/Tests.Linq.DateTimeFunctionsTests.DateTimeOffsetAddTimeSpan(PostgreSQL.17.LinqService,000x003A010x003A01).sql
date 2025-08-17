BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @ts Interval -- Object
SET     @ts = 00:01:01

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."DateTimeOffset",
	t1."DateTimeOffsetNullable"
FROM
	"DateTypesOffset" t1

