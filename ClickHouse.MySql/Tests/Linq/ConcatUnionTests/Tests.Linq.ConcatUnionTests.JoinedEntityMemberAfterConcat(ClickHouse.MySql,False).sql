-- ClickHouse.MySql ClickHouse
SELECT
	x_1.ParentID,
	CASE
		WHEN x_1.ParentID_1 IS NULL THEN -1
		WHEN x_1.projection__set_id__ = 0 THEN x_1.ChildID
		ELSE NULL
	END
FROM
	(
		SELECT
			x.ParentID as ParentID,
			c_1.ParentID as ParentID_1,
			c_1.ChildID as ChildID,
			toInt32(0) as projection__set_id__
		FROM
			Parent x
				LEFT JOIN Child c_1 ON c_1.ParentID = x.ParentID
		UNION ALL
		SELECT
			p.ParentID as ParentID,
			toInt32(NULL) as ParentID_1,
			toInt32(NULL) as ChildID,
			toInt32(1) as projection__set_id__
		FROM
			Parent p
	) x_1

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

