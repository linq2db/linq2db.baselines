-- YDB Ydb

SELECT
	t.ParentID as ParentID,
	t.ChildID as ChildID,
	i.ParentID as ParentID_1,
	i.Value1 as Value1
FROM
	Child t
		LEFT JOIN Parent i ON t.ParentID = i.ParentID

