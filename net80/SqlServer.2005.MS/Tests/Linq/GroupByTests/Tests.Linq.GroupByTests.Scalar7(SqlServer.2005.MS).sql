﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

