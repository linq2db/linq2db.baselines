-- PostgreSQL.9.5 PostgreSQL
SELECT
	e."Dec" / j."Dec"
FROM
	"MissedDivisorEntity" e
		LEFT JOIN "MissedDivisorEntity" j ON j."Id" = e."Id" + 1000

