-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @param2 Int16
SET     @param2 = 0

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
	t."BoolValue" = :param2

