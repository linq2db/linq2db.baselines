-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @bound Date
SET     @bound = '2000-01-01'::date

SELECT
	e."Id",
	CASE
		WHEN Coalesce(j."Day", '0001-01-01'::date) > :bound THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j."Day", '0001-01-01'::date) < :bound THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j."Day", '0001-01-01'::date) > e."Day" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j."Day", '0001-01-01'::date) <= e."Day" THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedDayEntity" e
		LEFT JOIN "MissedDayEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Day"
FROM
	"MissedDayEntity" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Floor(Extract(year From Coalesce(j."Day", '0001-01-01'::date)))::Int
FROM
	"MissedDayEntity" e
		LEFT JOIN "MissedDayEntity" j ON j."Id" = e."Id" + 1000

