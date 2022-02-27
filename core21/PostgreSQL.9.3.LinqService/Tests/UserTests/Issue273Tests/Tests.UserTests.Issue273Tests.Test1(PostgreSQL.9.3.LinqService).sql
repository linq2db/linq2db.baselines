BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	x."ID",
	x."BigIntValue"
FROM
	"LinqDataTypes" x
WHERE
	x."BigIntValue" IN (0, 1)

