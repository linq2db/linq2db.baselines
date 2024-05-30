﻿BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	GuidValue,
	BoolValue
)
SELECT
	toInt32(t2.c1 + toFloat64(1001)),
	generateUUIDv4(),
	true
FROM
	(
		SELECT DISTINCT
			Floor(toFloat64(t1.ID) / toFloat64(3)) as c1
		FROM
			LinqDataTypes t1
	) t2

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

