﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] IN (
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP (3)
					[p1].[ParentID]
				FROM
					[Parent] [p1]
				WHERE
					[p1].[Value1] = [p].[Value1] AND [p1].[Value1] IS NOT NULL AND [p].[Value1] IS NOT NULL OR
					[p1].[Value1] IS NULL AND [p].[Value1] IS NULL
			) [t1]
	)

