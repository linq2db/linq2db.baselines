-- YDB Ydb

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	GrandChild g_1
		INNER JOIN Child ch ON g_1.ChildID = ch.ChildID
UNION
SELECT
	ch_1.ParentID as ParentID,
	ch_1.ChildID as ChildID
FROM
	Child ch_1
		INNER JOIN Parent p ON ch_1.ParentID = p.ParentID

