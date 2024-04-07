BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(104)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	toInt32(102),
	toInt32(0)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(104)

