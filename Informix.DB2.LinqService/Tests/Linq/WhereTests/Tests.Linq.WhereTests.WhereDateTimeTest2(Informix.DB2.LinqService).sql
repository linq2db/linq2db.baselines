﻿BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
	t1.DateTimeValue > Mdy(1, 1, 2009)

