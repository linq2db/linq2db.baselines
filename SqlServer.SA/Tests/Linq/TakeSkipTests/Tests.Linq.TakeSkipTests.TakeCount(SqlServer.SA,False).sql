﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	Count(*)
FROM
	(
		SELECT TOP (5)
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[Child] [t1]
	) [t2]

