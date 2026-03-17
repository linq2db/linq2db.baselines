-- ClickHouse.Driver ClickHouse

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID % 2),
	4
FROM
	Parent p

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Driver ClickHouse

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID % 2),
	4
FROM
	Parent p

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

