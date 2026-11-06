-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
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

