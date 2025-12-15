-- ClickHouse.MySql ClickHouse

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = 1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.MySql ClickHouse

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = 3 OR x.ParentID = 2

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.MySql ClickHouse

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = 1 OR x.ParentID = 1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

