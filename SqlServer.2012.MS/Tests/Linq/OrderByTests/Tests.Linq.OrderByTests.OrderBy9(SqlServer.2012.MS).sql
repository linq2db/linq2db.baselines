﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] % 2 DESC,
	[ch].[ChildID] DESC

