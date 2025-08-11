BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	101,
	toInt64(12)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

