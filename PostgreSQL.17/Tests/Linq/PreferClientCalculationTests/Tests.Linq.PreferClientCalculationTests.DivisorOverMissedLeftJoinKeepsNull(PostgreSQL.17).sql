-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	e."Value1" / j."Value1",
	(e."Value1"::decimal % j."Value1")::decimal,
	e."Dbl" / j."Dbl",
	e."Value1" / (j."Value1" * 2)
FROM
	"MissedDivisorEntity" e
		LEFT JOIN "MissedDivisorEntity" j ON j."Id" = e."Id" + 1000

