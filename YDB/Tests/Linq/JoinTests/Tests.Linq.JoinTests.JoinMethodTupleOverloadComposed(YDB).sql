-- YDB Ydb
SELECT
	t.ParentID as ParentID,
	t.Value1 as Value1,
	c_1.ChildID as ChildID
FROM
	Parent t
		INNER JOIN Child c_1 ON t.ParentID = c_1.ParentID
WHERE
	c_1.ChildID > 20

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

