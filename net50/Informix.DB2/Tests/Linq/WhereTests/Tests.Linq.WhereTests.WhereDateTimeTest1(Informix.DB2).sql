BeforeExecute
-- Informix.DB2 Informix
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2009-01-01', '%Y-%m-%d')

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1
WHERE
	t1.DateTimeValue > @DateTimeValue

