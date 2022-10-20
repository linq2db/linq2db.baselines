BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(102)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	toInt32(101),
	toInt64(12)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	entity.ID,
	entity.BigIntValue,
	entity.IntValue
FROM
	LinqDataTypes entity
WHERE
	entity.BigIntValue = toInt64(12)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(102)

