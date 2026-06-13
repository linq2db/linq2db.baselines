-- YDB Ydb

SELECT DISTINCT
	c_1.ChildID as ChildID,
	a_Parent.ParentID as ParentID,
	a_Parent.Value1 as Value1
FROM
	Child c_1
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
ORDER BY
	ChildID

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	a_Parent.ParentID as ParentID_1,
	a_Parent.Value1 as Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID

