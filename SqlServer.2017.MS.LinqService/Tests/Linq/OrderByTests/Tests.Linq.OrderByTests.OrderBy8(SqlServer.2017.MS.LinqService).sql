﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] % 2,
	[ch].[ChildID]

