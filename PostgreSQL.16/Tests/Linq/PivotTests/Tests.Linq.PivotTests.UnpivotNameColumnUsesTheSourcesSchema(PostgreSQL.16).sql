-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	row_1."Id",
	row_1."Q1"
FROM
	"QuarterlySales" row_1
WHERE
	row_1."Q1" IS NOT NULL

