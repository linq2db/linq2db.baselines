-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

-- ClickHouse.Driver ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	1
)

-- ClickHouse.Driver ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1002,
	1
)

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID IN (1001, 1002)

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

