-- PostgreSQL.9.5 PostgreSQL
SELECT
	row_1."Id",
	row_1."Q1"
FROM
	"QuarterlySales" row_1
WHERE
	row_1."Q1" IS NOT NULL

