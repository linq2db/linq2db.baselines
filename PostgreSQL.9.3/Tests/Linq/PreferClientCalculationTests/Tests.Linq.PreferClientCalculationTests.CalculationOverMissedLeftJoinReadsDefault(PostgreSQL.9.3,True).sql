-- PostgreSQL.9.3 PostgreSQL
SELECT
	e."Id",
	j."Value1",
	Abs(Coalesce(j."Value1", 0) - 1),
	j."Date",
	e."Date"
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Value1",
	t1."Date"
FROM
	"MissedJoinEntity" t1

