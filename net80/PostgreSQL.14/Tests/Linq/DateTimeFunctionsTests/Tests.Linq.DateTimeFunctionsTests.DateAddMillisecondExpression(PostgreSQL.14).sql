BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	t."DateTimeValue" + :p * Interval '1 Millisecond'
FROM
	"LinqDataTypes" t

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

