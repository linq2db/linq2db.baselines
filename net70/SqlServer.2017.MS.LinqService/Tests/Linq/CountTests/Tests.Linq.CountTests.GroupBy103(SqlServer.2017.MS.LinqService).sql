﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[t1].[ParentID] = [ch].[ParentID] AND [t1].[ChildID] = [ch].[ChildID] AND
			[ch].[ChildID] > 20
	)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

