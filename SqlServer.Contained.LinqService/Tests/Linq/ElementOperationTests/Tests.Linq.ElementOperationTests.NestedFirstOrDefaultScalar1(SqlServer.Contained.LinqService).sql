﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT
	(
		SELECT TOP (1)
			[t1].[ChildID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

