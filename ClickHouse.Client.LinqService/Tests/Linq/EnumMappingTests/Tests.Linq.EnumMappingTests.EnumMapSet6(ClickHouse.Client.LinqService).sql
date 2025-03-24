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
	IntValue
)
VALUES
(
	101,
	3
)

BeforeExecute
--  ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	IntValue = 4
WHERE
	ID = 101 AND IntValue = 3

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.IntValue = 4

BeforeExecute
--  ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

