﻿BeforeExecute
--  SqlCe

SELECT
	[t1].[ChildID] as [Key_1],
	AVG([t1].[ParentID]) as [AVG_1]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

