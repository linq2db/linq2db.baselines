﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	GuidValue,
	BoolValue
)
SELECT
	toInt32(t1.c1 + toFloat64(1001)),
	generateUUIDv4(),
	true
FROM
	(
		SELECT DISTINCT
			Floor(toFloat64(_.ID) / toFloat64(3)) as c1
		FROM
			LinqDataTypes _
	) t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

