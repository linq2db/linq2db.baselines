-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	t."DateTimeValue" + :p * Interval '1 Millisecond'
FROM
	"LinqDataTypes" t

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

