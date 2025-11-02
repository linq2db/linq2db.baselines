-- ClickHouse.Driver ClickHouse

SELECT
	p1.ParentID,
	p1.ParentID as ParentID_1,
	p1.Value1
FROM
	Parent p1
UNION ALL
SELECT
	Coalesce(p2.Value1, 0) as ParentID,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as Value1
FROM
	Parent p2

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

