-- YDB Ydb

SELECT
	parent_1.ParentID as ParentID,
	childLeftJoin.ChildID as ChildID,
	grandChildLeftJoin.GrandChildID as GrandChildID
FROM
	Parent parent_1
		LEFT JOIN GrandChild grandChildLeftJoin ON parent_1.ParentID = grandChildLeftJoin.ParentID
		LEFT JOIN Child childLeftJoin ON parent_1.ParentID = childLeftJoin.ParentID

