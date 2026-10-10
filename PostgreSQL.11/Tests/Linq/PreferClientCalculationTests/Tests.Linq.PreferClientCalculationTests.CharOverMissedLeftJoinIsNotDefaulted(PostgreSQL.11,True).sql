-- PostgreSQL.11 PostgreSQL
SELECT
	e."Id",
	j."Code"
FROM
	"CharJoinEntity" e
		LEFT JOIN "CharJoinEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Code"
FROM
	"CharJoinEntity" t1

