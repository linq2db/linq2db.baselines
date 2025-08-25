BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @dateTime Timestamp -- DateTime2
SET     @dateTime = '1992-01-11 01:11:21.100'::timestamp

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" > :dateTime
LIMIT 1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @dateTime Timestamp -- DateTime2
SET     @dateTime = '1993-01-11 01:11:21.100'::timestamp

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" > :dateTime
LIMIT 1

