BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 105

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	101,
	11
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
	102,
	22
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
	103,
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
	104,
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
	r.ID >= 101 AND r.ID <= 104
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
	r.ID >= 101 AND r.ID <= 104
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 105

