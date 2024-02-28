BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = TIMESTAMP '2009-01-01 00:00:00.000000'

SELECT
	t1.ID,
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

