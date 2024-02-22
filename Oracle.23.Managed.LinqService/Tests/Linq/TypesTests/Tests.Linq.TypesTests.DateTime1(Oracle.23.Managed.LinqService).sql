BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @dt TimeStamp -- DateTime
SET     @dt = TIMESTAMP '2009-09-20 09:19:29.090000'

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
	Trunc(t."DateTimeValue", 'DD') > Trunc(:dt, 'DD')

