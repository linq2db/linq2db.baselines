BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6')

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
	t.DateTimeValue IN (:DateTimeValue)

