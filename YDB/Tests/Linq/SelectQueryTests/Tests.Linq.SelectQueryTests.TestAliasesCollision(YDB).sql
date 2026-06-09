-- YDB Ydb

SELECT
	child_1.ParentID as ParentID,
	child_1.ChildID as ChildID
FROM
	Child child_1
WHERE
	child_1.ChildID = -1

