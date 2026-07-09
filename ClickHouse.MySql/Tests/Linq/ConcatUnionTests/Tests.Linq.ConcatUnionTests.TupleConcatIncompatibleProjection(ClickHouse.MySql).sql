-- ClickHouse.MySql ClickHouse
SELECT
	x.Value1,
	x.ParentID
FROM
	Parent x
WHERE
	x.ParentID > 3
UNION ALL
SELECT
	toInt32(NULL) as Value1,
	toInt32(NULL) as ParentID
FROM
	Parent p2
WHERE
	p2.ParentID <= 3

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

