﻿BeforeExecute
-- SqlServer.2019

SELECT
	IIF([p].[ParentID] = 1, IIF([c_2].[ParentID] IS NOT NULL, N'1', N'2'), N'3')
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		) [c_2] ON 1=1

