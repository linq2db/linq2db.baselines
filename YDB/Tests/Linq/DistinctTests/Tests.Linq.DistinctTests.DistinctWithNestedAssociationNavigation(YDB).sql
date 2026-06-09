-- YDB Ydb

SELECT DISTINCT
	gc.GrandChildID as GrandChildID,
	a_Parent.Value1 as Value1
FROM
	GrandChild gc
		LEFT JOIN Child a_Child ON gc.ParentID = a_Child.ParentID AND gc.ChildID = a_Child.ChildID
		LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
ORDER BY
	GrandChildID

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	t1.GrandChildID as GrandChildID,
	a_Child.ParentID as ParentID_1,
	a_Child.ChildID as ChildID_1,
	a_Parent.ParentID as ParentID_2,
	a_Parent.Value1 as Value1
FROM
	GrandChild t1
		LEFT JOIN Child a_Child ON t1.ParentID = a_Child.ParentID AND t1.ChildID = a_Child.ChildID
		LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID

