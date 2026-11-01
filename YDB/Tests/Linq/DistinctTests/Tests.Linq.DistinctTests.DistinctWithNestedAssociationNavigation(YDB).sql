-- YDB Ydb
SELECT DISTINCT
	gc.GrandChildID as GrandChildID,
	t1.Value1 as Value1
FROM
	GrandChild gc
		LEFT JOIN (
			SELECT
				a_Parent.Value1 as Value1,
				a_Child.ParentID as ParentID,
				a_Child.ChildID as ChildID
			FROM
				Child a_Child
					LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
		) t1 ON gc.ParentID = t1.ParentID AND gc.ChildID = t1.ChildID
ORDER BY
	GrandChildID

-- YDB Ydb
SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID,
	t2.GrandChildID as GrandChildID,
	t1.ParentID_1 as ParentID_1,
	t1.ChildID as ChildID_1,
	t1.ParentID as ParentID_2,
	t1.Value1 as Value1
FROM
	GrandChild t2
		LEFT JOIN (
			SELECT
				a_Parent.ParentID as ParentID,
				a_Parent.Value1 as Value1,
				a_Child.ParentID as ParentID_1,
				a_Child.ChildID as ChildID
			FROM
				Child a_Child
					LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
		) t1 ON t2.ParentID = t1.ParentID_1 AND t2.ChildID = t1.ChildID

