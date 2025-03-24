﻿BeforeExecute
--  ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

BeforeExecute
--  ClickHouse.Client ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	101,
	toInt64(11)
)

BeforeExecute
--  ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BigIntValue = toInt64(12)
WHERE
	ID = 101 AND BigIntValue = toInt64(11)

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = toInt64(12)
LIMIT 1

BeforeExecute
--  ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

