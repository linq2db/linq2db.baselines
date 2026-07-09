-- PostgreSQL.18 PostgreSQL13

SELECT
	t."ID",
	t."IntValue"
FROM
	"TestTable5" t
WHERE
	(t."IntValue" & 1) <> 0

