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
	BigIntValue,
	IntValue
)
VALUES
(
	toInt32(101),
	toInt64(12),
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = toInt32(101) AND r.BigIntValue = toInt64(12)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(102)

