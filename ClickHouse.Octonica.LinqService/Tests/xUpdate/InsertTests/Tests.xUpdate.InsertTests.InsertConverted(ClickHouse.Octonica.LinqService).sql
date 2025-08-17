BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 1000

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	1001,
	toInt64(600000000)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t.ID,
	t.BigIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 1000

