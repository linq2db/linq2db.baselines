-- YDB Ydb
SELECT
	t.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	(
		SELECT
			Item1.ParentID as ParentID
		FROM
			Parent Item1
		WHERE
			Item1.ParentID >= 4
	) t
		RIGHT JOIN Child c_1 ON t.ParentID = c_1.ParentID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

