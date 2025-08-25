BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @ts Interval -- Object
SET     @ts = NULL

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
	NULL::TimeStamp,
	NULL::TimeStamp,
	NULL::TimeStamp,
	NULL::TimeStamp
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
	NULL::TimeStamp,
	NULL::TimeStamp,
	NULL::TimeStamp,
	NULL::TimeStamp
FROM
	"DateTypes" t_1

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."DateTime",
	t1."DateTimeNullable",
	t1."DateTime2",
	t1."DateTime2Nullable"
FROM
	"DateTypes" t1

