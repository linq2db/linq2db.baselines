﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

SELECT
	(
		SELECT TOP (1)
			[l].[ParentID] + 1
		FROM
			[Child] [l]
	)
FROM
	[Parent] [sep]

