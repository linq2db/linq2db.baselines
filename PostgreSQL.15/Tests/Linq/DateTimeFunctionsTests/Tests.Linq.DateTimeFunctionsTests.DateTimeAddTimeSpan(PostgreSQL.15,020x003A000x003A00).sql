-- PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."DateTime",
	t1."DateTimeNullable",
	t1."DateTime2",
	t1."DateTime2Nullable"
FROM
	"DateTypes" t1

