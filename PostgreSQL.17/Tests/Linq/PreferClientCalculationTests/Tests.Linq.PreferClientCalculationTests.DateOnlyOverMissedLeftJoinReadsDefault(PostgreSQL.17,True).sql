-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	e."Id",
	j."Day",
	e."Day"
FROM
	"MissedDayEntity" e
		LEFT JOIN "MissedDayEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Day"
FROM
	"MissedDayEntity" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	Floor(Extract(year From Coalesce(j."Day", '0001-01-01'::date)))::Int
FROM
	"MissedDayEntity" e
		LEFT JOIN "MissedDayEntity" j ON j."Id" = e."Id" + 1000

