﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] % 2 DESC,
	[ch].[ChildID] DESC

