﻿BeforeExecute
-- SqlServer.2005

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

