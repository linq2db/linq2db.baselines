﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

