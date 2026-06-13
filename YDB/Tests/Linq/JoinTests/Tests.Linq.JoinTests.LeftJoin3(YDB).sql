-- YDB Ydb

SELECT
	a_Parent.ParentID as ParentID,
	a_Parent.Value1 as Value1
FROM
	Child c_1
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID

