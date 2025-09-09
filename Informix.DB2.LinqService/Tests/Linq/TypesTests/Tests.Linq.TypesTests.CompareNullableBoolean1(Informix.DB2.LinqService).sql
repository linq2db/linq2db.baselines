BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @param Char(1) -- StringFixedLength
SET     @param = 't'

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
	t.BoolValue = @param

