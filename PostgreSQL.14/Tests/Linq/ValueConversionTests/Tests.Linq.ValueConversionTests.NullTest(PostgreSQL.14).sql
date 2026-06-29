-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t."Id",
	t."Value1",
	t."Value2"
FROM
	"ValueConversion" t
WHERE
	t."Value2" IS NULL

