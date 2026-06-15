-- YDB Ydb

SELECT
	grandChild_1.ParentID as ParentID,
	grandChild_1.ChildID as ChildID,
	grandChild_1.GrandChildID as GrandChildID
FROM
	GrandChild grandChild_1
		CROSS JOIN Child child_1
WHERE
	grandChild_1.ChildID IS NOT NULL

