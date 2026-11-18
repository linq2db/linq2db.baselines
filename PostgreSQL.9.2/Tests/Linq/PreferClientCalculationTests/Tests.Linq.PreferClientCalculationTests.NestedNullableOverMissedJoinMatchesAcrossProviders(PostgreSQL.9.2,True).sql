-- PostgreSQL.9.2 PostgreSQL
SELECT
	e."Id",
	j."Value1" + 1
FROM
	"ClientCalcEntity" e
		LEFT JOIN "ClientCalcEntity" j ON j."Id" = e."Id" + 1000

