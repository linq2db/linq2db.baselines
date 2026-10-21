-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	e."Id",
	j."Value1" + 1
FROM
	"ClientCalcEntity" e
		LEFT JOIN "ClientCalcEntity" j ON j."Id" = e."Id" + 1000

