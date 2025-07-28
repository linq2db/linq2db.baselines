BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + 5::float8 * Interval '1 Day')
FROM
	"LinqDataTypes" t

