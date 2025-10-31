-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 104

-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	101,
	'11'
)

-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	102,
	'22'
)

-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	103,
	NULL
)

-- ClickHouse.MySql ClickHouse

SELECT
	r.ID,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 103
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
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 104

