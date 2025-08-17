BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	101,
	toInt64(5)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	r.ID,
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

