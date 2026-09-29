-- PostgreSQL.9.5 PostgreSQL
SELECT
	e."Id",
	CASE
		WHEN j."Code" = 'A' THEN 1
		ELSE 0
	END
FROM
	"CharJoinEntity" e
		LEFT JOIN "CharJoinEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Code"
FROM
	"CharJoinEntity" t1

