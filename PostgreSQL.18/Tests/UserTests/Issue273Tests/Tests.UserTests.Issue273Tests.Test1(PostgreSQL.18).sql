-- PostgreSQL.18 PostgreSQL13

SELECT
	x."ID",
	x."BigIntValue"
FROM
	"LinqDataTypes" x
WHERE
	x."BigIntValue" IN (0, 1)

