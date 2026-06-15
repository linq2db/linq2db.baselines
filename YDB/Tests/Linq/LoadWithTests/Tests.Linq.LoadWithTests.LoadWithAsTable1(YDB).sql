-- YDB Ydb

SELECT
	t.ParentID as ParentID,
	t.ChildID as ChildID,
	a_Parent.ParentID as ParentID_1,
	a_Parent.Value1 as Value1
FROM
	Child t
		LEFT JOIN Parent a_Parent ON t.ParentID = a_Parent.ParentID
LIMIT 1

