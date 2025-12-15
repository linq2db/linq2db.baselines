-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	entity.ID,
	entity.BigIntValue,
	entity.IntValue
FROM
	LinqDataTypes entity
WHERE
	entity.BigIntValue = toInt64(12)

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

