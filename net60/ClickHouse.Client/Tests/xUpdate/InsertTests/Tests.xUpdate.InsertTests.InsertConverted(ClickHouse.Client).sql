BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(1000)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	toInt32(1001),
	toInt64(600000000)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.ID,
	t.BigIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = toInt32(1001)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(1000)

