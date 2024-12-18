﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	parent_1.ParentID,
	childLeftJoin.ChildID,
	grandChildLeftJoin.GrandChildID
FROM
	Parent parent_1
		LEFT JOIN GrandChild grandChildLeftJoin ON parent_1.ParentID = grandChildLeftJoin.ParentID AND grandChildLeftJoin.ParentID IS NOT NULL
		LEFT JOIN Child childLeftJoin ON parent_1.ParentID = childLeftJoin.ParentID

