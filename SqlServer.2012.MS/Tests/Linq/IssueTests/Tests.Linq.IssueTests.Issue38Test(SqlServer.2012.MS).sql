﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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

