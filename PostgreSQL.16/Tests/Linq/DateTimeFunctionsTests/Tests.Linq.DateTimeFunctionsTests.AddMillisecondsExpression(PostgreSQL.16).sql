-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	t."DateTimeValue" + :p * Interval '1 Millisecond'
FROM
	"LinqDataTypes" t

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

