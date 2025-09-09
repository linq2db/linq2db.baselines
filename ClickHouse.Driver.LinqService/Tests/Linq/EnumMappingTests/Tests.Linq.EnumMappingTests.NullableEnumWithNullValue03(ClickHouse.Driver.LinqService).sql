BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 104

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	r.ID,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 104

