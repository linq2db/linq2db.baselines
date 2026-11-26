-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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
	x_1."Usd" * 2
FROM
	"Amounts" x_1
WHERE
	x_1."Id" = 2

