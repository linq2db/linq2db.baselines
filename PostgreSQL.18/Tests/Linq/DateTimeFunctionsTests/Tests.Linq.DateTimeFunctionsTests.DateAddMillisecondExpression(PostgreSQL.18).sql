-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	t."DateTimeValue" + :p * Interval '1 Millisecond'
FROM
	"LinqDataTypes" t

-- PostgreSQL.18 PostgreSQL

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

