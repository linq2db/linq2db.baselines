﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[selectParam].[ChildID],
	Avg([selectParam].[ParentID])
FROM
	[Child] [selectParam]
GROUP BY
	[selectParam].[ChildID]

