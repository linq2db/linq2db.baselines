﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child t1
		INNER JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
LIMIT toInt32(1)

