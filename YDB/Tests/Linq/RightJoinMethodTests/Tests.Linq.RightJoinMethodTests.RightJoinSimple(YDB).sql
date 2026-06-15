-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Parent p
		RIGHT JOIN Child c_1 ON p.ParentID = c_1.ParentID

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

