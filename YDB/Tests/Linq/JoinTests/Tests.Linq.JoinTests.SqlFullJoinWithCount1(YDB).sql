-- YDB Ydb

SELECT
	COUNT(t1.ParentID) = COUNT(right_1.ParentID) AND COUNT(t1.ParentID) = COUNT(*) as c1
FROM
	Parent t1
		FULL JOIN Parent right_1 ON right_1.ParentID = t1.ParentID
LIMIT 2

