﻿BeforeExecute
-- SqlCe

SELECT
	MAX([id].[ChildID]) as [max_1]
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

