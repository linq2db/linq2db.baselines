BeforeExecute
-- Informix.DB2 Informix
DECLARE @param3 Char(1) -- StringFixedLength
SET     @param3 = 'f'

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
	t.BoolValue = @param3

