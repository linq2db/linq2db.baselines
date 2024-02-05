BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(104)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	toInt32(101),
	toInt32(11)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	toInt32(102),
	toInt32(22)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	toInt32(103),
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.IntValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= toInt32(101) AND r.ID <= toInt32(103)
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.IntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= toInt32(101) AND r.ID <= toInt32(103)
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(104)

