﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] % 2,
	[ch].[ChildID]

