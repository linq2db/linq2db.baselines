﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] = 2 AND [ch].[ChildID] = 21

