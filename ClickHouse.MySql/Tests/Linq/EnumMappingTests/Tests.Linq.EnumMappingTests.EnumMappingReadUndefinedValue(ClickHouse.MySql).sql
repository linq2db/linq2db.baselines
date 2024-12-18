BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	r.ID,
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.ID IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

