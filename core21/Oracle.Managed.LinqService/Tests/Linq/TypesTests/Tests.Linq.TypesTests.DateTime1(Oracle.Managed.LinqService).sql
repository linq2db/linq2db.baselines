BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TO_TIMESTAMP('2009-09-20 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6')

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
	Trunc(t.DateTimeValue, 'DD') > :Date_1

