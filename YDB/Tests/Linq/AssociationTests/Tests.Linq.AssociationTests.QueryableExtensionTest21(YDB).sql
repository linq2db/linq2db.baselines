-- YDB Ydb

SELECT
	a_QueryableParent.ParentID as ParentID,
	a_QueryableParent.Value1 as Value1
FROM
	Child t1
		INNER JOIN Parent a_QueryableParent ON t1.ParentID = a_QueryableParent.ParentID

