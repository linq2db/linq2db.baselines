﻿BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
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
	t.MoneyValue * Cast(t.ID as Decimal(29, 10)) = 1.11

