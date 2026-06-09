-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	a_Parent.ParentID as ParentID_1,
	a_Parent.Value1 as Value1
FROM
	Child t1
		INNER JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
LIMIT 1

