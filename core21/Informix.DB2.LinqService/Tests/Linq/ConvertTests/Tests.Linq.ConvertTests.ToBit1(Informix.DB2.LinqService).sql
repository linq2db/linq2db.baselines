BeforeExecute
-- Informix.DB2 Informix

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
	(CASE
		WHEN t.MoneyValue = 0 THEN 'f'
		ELSE 't'
	END = 't' AND CASE
		WHEN t.MoneyValue = 0 THEN 'f'
		ELSE 't'
	END IS NOT NULL)

