-- YDB Ydb

SELECT
	t.ParentID as ParentID,
	t.ChildID as ChildID
FROM
	Child t
UNION
SELECT
	t_1.ParentID as ParentID,
	t_1.ChildID as ChildID
FROM
	Child t_1
WHERE
	t_1.ChildID < 10

