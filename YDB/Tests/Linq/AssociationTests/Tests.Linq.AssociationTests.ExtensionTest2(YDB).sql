-- YDB Ydb

SELECT
	a_Parent.ParentID as ParentID,
	a_Parent.Value1 as Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID

