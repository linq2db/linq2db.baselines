﻿BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	(
		SELECT TOP (1)
			[l].[ParentID] + 1
		FROM
			[Child] [l]
	)
FROM
	[Parent] [sep]

