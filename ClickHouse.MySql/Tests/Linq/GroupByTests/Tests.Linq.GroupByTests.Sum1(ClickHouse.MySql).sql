﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	sum(g_1.ChildID)
FROM
	Child g_1
GROUP BY
	g_1.ParentID

