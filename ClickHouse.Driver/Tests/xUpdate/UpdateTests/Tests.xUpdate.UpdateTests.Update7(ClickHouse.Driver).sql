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

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001 AND p.Value1 = 1

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
UPDATE
	Value1 = 2
WHERE
	ParentID = 1001

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001 AND p.Value1 = 2

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
UPDATE
	Value1 = 3
WHERE
	ParentID = 1001

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001 AND p.Value1 = 3

