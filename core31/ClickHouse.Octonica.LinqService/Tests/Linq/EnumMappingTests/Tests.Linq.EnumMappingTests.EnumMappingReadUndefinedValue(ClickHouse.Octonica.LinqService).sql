BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(102)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	toInt32(101),
	toInt64(5)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = toInt32(101)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(102)

