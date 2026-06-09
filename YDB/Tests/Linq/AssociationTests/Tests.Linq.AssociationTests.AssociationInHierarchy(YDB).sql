-- YDB Ydb

SELECT
	a_Parent.ParentID as ParentID,
	a_Parent.Value1 as Value1
FROM
	Child ch
		LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID

