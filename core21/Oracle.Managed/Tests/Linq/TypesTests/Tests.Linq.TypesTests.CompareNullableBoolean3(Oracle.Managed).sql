BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @param3 Int16
SET     @param3 = 0

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
	t."BoolValue" = :param3

