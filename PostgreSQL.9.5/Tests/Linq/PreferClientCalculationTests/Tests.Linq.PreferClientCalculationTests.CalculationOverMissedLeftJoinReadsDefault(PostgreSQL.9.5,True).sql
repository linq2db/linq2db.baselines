-- PostgreSQL.9.5 PostgreSQL
SELECT
	e."Id",
	j."Value1",
	Abs(Coalesce(j."Value1", 0) - 1),
	j."Date",
	e."Date"
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Value1",
	t1."Date",
	t1."Flag",
	t1."Name"
FROM
	"MissedJoinEntity" t1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	Floor(Extract(year From Coalesce(j."Date", '0001-01-01'::date)))::Int
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

