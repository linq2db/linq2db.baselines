BeforeExecute
-- Informix.DB2 Informix
DECLARE @param2_1 Char(1) -- StringFixedLength
SET     @param2_1 = 'f'

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
	t.BoolValue = @param2_1

