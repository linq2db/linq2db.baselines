BeforeExecute
-- Informix.DB2 Informix
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')

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
	t.DateTimeValue IN (@DateTimeValue)

