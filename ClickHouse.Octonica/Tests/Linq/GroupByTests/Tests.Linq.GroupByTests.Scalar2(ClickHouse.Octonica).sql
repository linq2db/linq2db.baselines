﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	max(g_1.ChildID),
	max(g_1.ChildID + g_1.ParentID)
FROM
	Child g_1
GROUP BY
	g_1.ParentID

