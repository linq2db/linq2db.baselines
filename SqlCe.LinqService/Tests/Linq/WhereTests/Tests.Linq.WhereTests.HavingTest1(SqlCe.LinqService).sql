﻿BeforeExecute
--  SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	COUNT(*) > 1

