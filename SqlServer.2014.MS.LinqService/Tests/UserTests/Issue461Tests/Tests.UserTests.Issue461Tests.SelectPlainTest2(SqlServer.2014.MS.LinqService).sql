﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[ParentID],
	(
		SELECT TOP (1)
			[c_1].[ParentID] + 1
		FROM
			[Child] [c_1]
	)
FROM
	[Parent] [p]

