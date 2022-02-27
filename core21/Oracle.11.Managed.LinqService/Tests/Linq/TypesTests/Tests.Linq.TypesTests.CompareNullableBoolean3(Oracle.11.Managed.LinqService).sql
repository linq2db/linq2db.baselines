BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @param2_1 Int16
SET     @param2_1 = 0

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.BoolValue = :param2_1

