-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	j."Value1" + 1
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

