﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BinaryValue = '\x01\x02\x03\x04\x05'
WHERE
	ID = 1

BeforeExecute
--  ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BinaryValue = '\x05\x04\x03\x02\x01'
WHERE
	ID = 2

BeforeExecute
--  ClickHouse.Octonica ClickHouse

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
	t.ID IN (1, 2)

