-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 105

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

-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	102,
	0
)

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

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 105

