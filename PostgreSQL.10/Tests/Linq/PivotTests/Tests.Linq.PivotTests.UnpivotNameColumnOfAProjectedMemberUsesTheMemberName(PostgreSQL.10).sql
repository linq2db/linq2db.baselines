-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."Id",
	'Q1'::text,
	x."Q1"
FROM
	"QuarterlySales" x
WHERE
	x."Q1" IS NOT NULL
UNION ALL
SELECT
	x_1."Id",
	'Q2'::text,
	x_1."Q2"
FROM
	"QuarterlySales" x_1
WHERE
	x_1."Q2" IS NOT NULL

