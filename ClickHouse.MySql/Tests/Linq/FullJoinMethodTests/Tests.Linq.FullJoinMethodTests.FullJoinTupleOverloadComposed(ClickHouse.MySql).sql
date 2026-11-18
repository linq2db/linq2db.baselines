-- ClickHouse.MySql ClickHouse
SELECT
	t.ParentID,
	t1.ChildID
FROM
	(
		SELECT
			Item1.ParentID as ParentID
		FROM
			Parent Item1
		WHERE
			Item1.ParentID < 3
	) t
		FULL JOIN (
			SELECT
				c_1.ChildID as ChildID,
				c_1.ParentID as ParentID
			FROM
				Child c_1
			WHERE
				c_1.ParentID > 1
		) t1 ON t.ParentID = t1.ParentID

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

