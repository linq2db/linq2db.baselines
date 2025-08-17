BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @param2 Char(1) -- StringFixedLength
SET     @param2 = 'f'

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
	t.BoolValue = @param2

