BeforeExecute
-- Informix.DB2 Informix
DECLARE @Date_1 Timestamp(16) -- DateTime
SET     @Date_1 = TO_DATE('2009-09-20', '%Y-%m-%d')

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
	Date(t.DateTimeValue) > @Date_1

