-- PostgreSQL.9.5 PostgreSQL
SELECT
	x."Id",
	x."Usd",
	NULL::decimal
FROM
	"Amounts" x
WHERE
	x."Id" = 1
UNION ALL
SELECT
	x_1."Id",
	NULL::decimal,
	x_1."Eur"
FROM
	"Amounts" x_1
WHERE
	x_1."Id" = 2

