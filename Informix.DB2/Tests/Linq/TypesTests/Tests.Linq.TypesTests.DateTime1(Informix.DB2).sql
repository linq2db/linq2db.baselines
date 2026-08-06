-- Informix.DB2 Informix
DECLARE @Date Timestamp(16) -- DateTime
SET     @Date = TO_DATE('2009-09-20', '%Y-%m-%d')

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
	Extend(t.DateTimeValue, Year to Day) > @Date

