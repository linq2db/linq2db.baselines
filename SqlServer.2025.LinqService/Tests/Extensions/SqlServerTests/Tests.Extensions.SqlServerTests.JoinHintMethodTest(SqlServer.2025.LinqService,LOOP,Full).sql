﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		FULL LOOP JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

