﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	a_Parent.Value1
FROM
	GrandChild g_1
		INNER JOIN Parent a_Parent ON g_1.ParentID = a_Parent.ParentID
GROUP BY
	a_Parent.ParentID,
	a_Parent.Value1
HAVING
	COUNT(CASE
		WHEN g_1.ChildID >= 20 AND g_1.ChildID IS NOT NULL THEN 1
		ELSE NULL
	END) > 2 AND
	sumOrNull(CASE
		WHEN g_1.ChildID >= 19 AND g_1.ChildID IS NOT NULL THEN g_1.ParentID
		ELSE NULL
	END) > 0 AND
	maxOrNull(CASE
		WHEN g_1.ChildID >= 19 AND g_1.ChildID IS NOT NULL THEN g_1.ParentID
		ELSE NULL
	END) > 0

