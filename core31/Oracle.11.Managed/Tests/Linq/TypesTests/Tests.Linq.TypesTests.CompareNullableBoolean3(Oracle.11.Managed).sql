BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @param4 Int16
SET     @param4 = 0

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
	t."BoolValue" = :param4

