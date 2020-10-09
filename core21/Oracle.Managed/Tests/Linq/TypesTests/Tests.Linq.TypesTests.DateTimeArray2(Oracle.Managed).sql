BeforeExecute
-- Oracle.Managed Oracle12

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
	t.DateTimeValue IN (TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'), TO_TIMESTAMP('2012-11-07 19:19:29.090000', 'YYYY-MM-DD HH24:MI:SS.FF6'))

