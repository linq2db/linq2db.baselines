BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	x."ID",
	x."BigIntValue"
FROM
	"LinqDataTypes" x
WHERE
	x."BigIntValue" IN (0, 1)

