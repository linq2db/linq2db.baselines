BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.ID, 
	t1.MoneyValue, 
	t1.DateTimeValue, 
	t1.DateTimeValue2, 
	t1.BoolValue, 
	t1.GuidValue, 
	t1.SmallIntValue, 
	t1.IntValue, 
	t1.BigIntValue, 
	t1.StringValue
FROM
	LinqDataTypes t1
WHERE
	(CASE
		WHEN t1.BoolValue IN ('t')
			THEN 't'
		ELSE 'f'
	END = 'f' OR CASE
		WHEN t1.BoolValue IN ('t')
			THEN 't'
		ELSE 'f'
	END IS NULL)

