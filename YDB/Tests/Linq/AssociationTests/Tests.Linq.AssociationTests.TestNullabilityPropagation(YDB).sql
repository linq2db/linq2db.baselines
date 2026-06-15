-- YDB Ydb

SELECT
	t.ParentID as ParentID,
	t.Value1 as Value1
FROM
	Parent t
		LEFT JOIN Child a_Middle ON t.ParentID = a_Middle.ParentID
WHERE
	a_Middle.ParentID <> 4 OR a_Middle.ParentID IS NULL

