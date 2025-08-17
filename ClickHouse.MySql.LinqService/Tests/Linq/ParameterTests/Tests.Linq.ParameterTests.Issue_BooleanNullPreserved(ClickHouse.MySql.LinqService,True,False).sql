BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO TestBool
(
	Id,
	Value
)
VALUES
(
	1,
	true
)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Value
FROM
	TestBool t1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	TestBool
UPDATE
	Id = 1,
	Value = NOT Value
WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Value
FROM
	TestBool t1
LIMIT 2

