﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
GROUP BY
	t1.ParentID,
	t1.ChildID

