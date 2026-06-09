-- YDB Ydb
DECLARE $take Int32
SET     $take = 1

SELECT
	COUNT(*) as Count_1,
	1 + MIN(g_1.ChildID) as Expr,
	MAX(g_1.ChildID) as Max_1
FROM
	Child g_1
LIMIT $take

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

