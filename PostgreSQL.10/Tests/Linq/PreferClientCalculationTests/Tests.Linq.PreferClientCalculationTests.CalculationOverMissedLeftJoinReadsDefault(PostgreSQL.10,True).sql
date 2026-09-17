-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	e."Id",
	j."Value1",
	Abs(Coalesce(j."Value1", 0) - 1),
	j."Date",
	Floor(Extract(year From j."Date"))::Int,
	e."Date"
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Value1",
	t1."Date"
FROM
	"MissedJoinEntity" t1

