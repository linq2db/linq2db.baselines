-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001 AND p.Value1 = 1

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
UPDATE
	Value1 = 2
WHERE
	ParentID = 1001

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001 AND p.Value1 = 2

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
UPDATE
	Value1 = 3
WHERE
	ParentID = 1001

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001 AND p.Value1 = 3

