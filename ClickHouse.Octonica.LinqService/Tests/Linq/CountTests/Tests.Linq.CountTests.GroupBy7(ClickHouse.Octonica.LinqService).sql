﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	COUNT(*),
	max(g_1.ChildID)
FROM
	Child g_1
GROUP BY
	g_1.ParentID

