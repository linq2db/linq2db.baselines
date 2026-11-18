-- ClickHouse.MySql ClickHouse
SELECT
	x_1.ParentID
FROM
	(
		SELECT
			x.ParentID as ParentID,
			toInt32(NULL) as Child
		FROM
			Parent x
		UNION ALL
		SELECT
			t1.ParentID as ParentID,
			c_1.ParentID as Child
		FROM
			Parent t1
				LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID
	) x_1
WHERE
	x_1.Child IS NULL

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

