BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO LinqDataTypes
(
	ID
)
VALUES
(
	101
)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

