BeforeExecute
-- Informix.DB2 Informix
DECLARE @value_1 BigInt(8) -- Int64
SET     @value_1 = 0

SELECT 
	t.ID, 
	t.MoneyValue, 
	t.DateTimeValue, 
	t.DateTimeValue2, 
	t.BoolValue, 
	t.GuidValue, 
	t.SmallIntValue, 
	t.IntValue, 
	t.BigIntValue, 
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.BigIntValue = @value_1

