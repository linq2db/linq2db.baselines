﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = CAST(Floor(CAST([ch].[ChildID] AS Float) / 10) AS Int)
WHERE
	[ch].[ParentID] = [p].[ParentID]

