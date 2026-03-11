-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID
)
VALUES
(
	101
)

-- ClickHouse.MySql ClickHouse

SELECT
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue IS NULL
LIMIT 1

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

