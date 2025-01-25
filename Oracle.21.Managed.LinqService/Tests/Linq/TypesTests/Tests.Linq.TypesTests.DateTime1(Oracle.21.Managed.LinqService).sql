BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TIMESTAMP '2009-09-20 00:00:00.000000'

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."DateTimeValue2",
	t."BoolValue",
	t."GuidValue",
	t."SmallIntValue",
	t."IntValue",
	t."BigIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	TRUNC(t."DateTimeValue") > :Date_1

