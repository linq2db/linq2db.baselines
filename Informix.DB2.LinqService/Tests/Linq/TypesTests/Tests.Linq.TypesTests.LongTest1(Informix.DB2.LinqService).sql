﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @value BigInt(8) -- Int64
SET     @value = 0

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
	t.BigIntValue = @value AND t.BigIntValue IS NOT NULL

