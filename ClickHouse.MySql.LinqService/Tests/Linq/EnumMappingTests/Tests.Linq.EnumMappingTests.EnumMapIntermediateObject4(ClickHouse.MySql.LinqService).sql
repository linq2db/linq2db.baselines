BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = toInt64(12)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

