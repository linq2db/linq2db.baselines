-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	e."Id",
	j."Value1" + 1
FROM
	"ClientCalcEntity" e
		LEFT JOIN "ClientCalcEntity" j ON j."Id" = e."Id" + 1000

