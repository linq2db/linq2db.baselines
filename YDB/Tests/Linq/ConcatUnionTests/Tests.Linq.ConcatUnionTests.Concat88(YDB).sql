-- YDB Ydb
SELECT
	c_1.ChildID as ChildID,
	c_1.ParentID as ParentID
FROM
	Child c_1
UNION ALL
SELECT
	c_2.Value1 as ChildID,
	c_2.ParentID as ParentID
FROM
	Parent c_2

