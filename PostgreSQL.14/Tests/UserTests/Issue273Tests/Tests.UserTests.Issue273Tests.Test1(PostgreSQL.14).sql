-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	x."ID",
	x."BigIntValue"
FROM
	"LinqDataTypes" x
WHERE
	x."BigIntValue" IN (0, 1)

