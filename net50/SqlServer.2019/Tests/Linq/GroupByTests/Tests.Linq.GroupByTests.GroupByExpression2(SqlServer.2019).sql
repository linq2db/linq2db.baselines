﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[selectParam].[ChildID],
	Avg([selectParam].[ParentID])
FROM
	[Child] [selectParam]
GROUP BY
	[selectParam].[ChildID]

