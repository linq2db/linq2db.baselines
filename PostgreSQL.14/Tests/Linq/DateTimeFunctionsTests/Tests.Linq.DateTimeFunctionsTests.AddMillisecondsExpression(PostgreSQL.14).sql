-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	t."DateTimeValue" + :p * Interval '1 Millisecond'
FROM
	"LinqDataTypes" t

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

