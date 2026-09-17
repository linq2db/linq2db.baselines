-- PostgreSQL.19 PostgreSQL12
DECLARE @bound Timestamp -- DateTime2
SET     @bound = '2000-01-01'::date

SELECT
	e."Id",
	Coalesce(j."Value1", 0) + 1,
	CASE
		WHEN Coalesce(j."Value1", 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Coalesce(j."Value1", 0) - 1),
	CASE
		WHEN j."Date" IS NULL THEN 1
		ELSE Floor(Extract(year From j."Date"))::Int
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'n'
		WHEN j."Date" > :bound THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'y'
		WHEN j."Date" < :bound THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'n'
		WHEN j."Date" > e."Date" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'y'
		WHEN j."Date" <= e."Date" THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Date"
FROM
	"MissedJoinEntity" t1

