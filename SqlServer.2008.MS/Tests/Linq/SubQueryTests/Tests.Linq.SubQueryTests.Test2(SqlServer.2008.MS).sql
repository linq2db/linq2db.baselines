﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	(
		SELECT
			MAX([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] = [p].[ParentID] AND [ch].[ChildID] > 1
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

