-- YDB Ydb

SELECT
	Item1.ParentID as ParentID,
	Item1.ChildID as ChildID
FROM
	Child Item1
		INNER JOIN Parent arg2 ON Item1.ParentID = arg2.ParentID
WHERE
	arg2.Value1 = 6
LIMIT 1

