BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue,
	IntValue
)
VALUES
(
	101,
	toInt64(12),
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = toInt64(12)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

