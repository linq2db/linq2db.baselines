﻿BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT TOP (3)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] >= 0 AND [ch].[ChildID] <= 100

