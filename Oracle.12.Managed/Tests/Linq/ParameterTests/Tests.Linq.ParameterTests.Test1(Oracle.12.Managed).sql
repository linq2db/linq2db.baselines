BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @dt TimeStamp -- DateTime
SET     @dt = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" = :dt

