﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] % 2,
	[ch].[ChildID]

