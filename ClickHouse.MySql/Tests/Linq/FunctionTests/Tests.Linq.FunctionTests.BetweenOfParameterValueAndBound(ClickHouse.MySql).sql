-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID
FROM
	Parent p
WHERE
	3 BETWEEN 0 AND p.ParentID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID
FROM
	Parent p
WHERE
	3 NOT BETWEEN 0 AND p.ParentID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

