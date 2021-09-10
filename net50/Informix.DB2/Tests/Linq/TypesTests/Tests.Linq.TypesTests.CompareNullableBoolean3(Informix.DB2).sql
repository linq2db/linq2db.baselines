BeforeExecute
-- Informix.DB2 Informix
DECLARE @param4 Char(1) -- StringFixedLength
SET     @param4 = 'f'

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
	t.BoolValue = @param4

