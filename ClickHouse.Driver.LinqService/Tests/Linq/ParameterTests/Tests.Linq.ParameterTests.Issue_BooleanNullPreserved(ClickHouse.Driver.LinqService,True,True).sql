BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO TestBool
(
	Id,
	Value
)
VALUES
(
	1,
	false
)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Value
FROM
	TestBool t1
LIMIT 2

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	TestBool
UPDATE
	Value = NOT Value
WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Value
FROM
	TestBool t1
LIMIT 2

