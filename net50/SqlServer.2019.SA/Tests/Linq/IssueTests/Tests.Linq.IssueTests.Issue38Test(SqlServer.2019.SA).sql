﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[GrandChild] [t1]
		WHERE
			[a].[ParentID] = [t1].[ParentID] AND [a].[ChildID] = [t1].[ChildID]
	)
FROM
	[Child] [a]

