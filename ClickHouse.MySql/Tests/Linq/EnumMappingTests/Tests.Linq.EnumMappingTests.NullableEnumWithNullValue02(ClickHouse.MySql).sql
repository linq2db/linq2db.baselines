BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(105)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	toInt32(104),
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.ID,
	r.IntValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= toInt32(101) AND r.ID <= toInt32(104)
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.ID,
	r.IntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= toInt32(101) AND r.ID <= toInt32(104)
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(105)

