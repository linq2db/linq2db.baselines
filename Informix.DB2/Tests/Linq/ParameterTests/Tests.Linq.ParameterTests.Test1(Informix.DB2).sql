BeforeExecute
-- Informix.DB2 Informix
DECLARE @dt Timestamp(16) -- DateTime
SET     @dt = TO_DATE('2020-02-29 17:54:55', '%Y-%m-%d %H:%M:%S')

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
	t.DateTimeValue = @dt

