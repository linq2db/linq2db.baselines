-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.Value1 <= 2

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.Value1 > 2 OR p.Value1 IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	2 >= p.Value1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	2 < p.Value1 OR p.Value1 IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

