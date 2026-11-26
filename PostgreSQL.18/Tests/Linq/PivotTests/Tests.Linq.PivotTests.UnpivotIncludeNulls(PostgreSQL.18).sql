-- PostgreSQL.18 PostgreSQL12
SELECT
	row_1."Id",
	'Q1'::text,
	row_1."Q1"
FROM
	"QuarterlySales" row_1
UNION ALL
SELECT
	row_2."Id",
	'Q2'::text,
	row_2."Q2"
FROM
	"QuarterlySales" row_2
UNION ALL
SELECT
	row_3."Id",
	'Q3'::text,
	row_3."Q3"
FROM
	"QuarterlySales" row_3
UNION ALL
SELECT
	row_4."Id",
	'Q4'::text,
	row_4."Q4"
FROM
	"QuarterlySales" row_4

