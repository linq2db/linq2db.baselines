-- PostgreSQL.9.3 PostgreSQL
SELECT
	x."Usd",
	x."Id",
	NULL::Int
FROM
	"Amounts" x
WHERE
	x."Id" = 1
UNION ALL
SELECT
	NULL::decimal,
	x_1."Id",
	x_1."Id"
FROM
	"Amounts" x_1
WHERE
	x_1."Id" = 2

