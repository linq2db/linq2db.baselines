﻿BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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
	toDate32(t1.DateTimeValue) = toDate32(makeDateTime(2009, 9, 20, 0, 0, 0))

