BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = '2009-01-01'::date

SELECT
	t1."ID",
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1."DateTimeValue" > :DateTimeValue

