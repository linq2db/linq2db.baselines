﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

SELECT
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

