-- PostgreSQL.13 PostgreSQL12
SELECT
	e."Value1" / j."Value1",
	Floor(e."Value1"::decimal % j."Value1")::Int,
	e."Dbl" / j."Dbl",
	e."Value1" / (j."Value1" * 2)
FROM
	"MissedDivisorEntity" e
		LEFT JOIN "MissedDivisorEntity" j ON j."Id" = e."Id" + 1000

