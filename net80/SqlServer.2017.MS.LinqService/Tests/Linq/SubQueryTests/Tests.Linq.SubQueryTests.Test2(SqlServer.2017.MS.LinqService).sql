﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	(
		SELECT
			Max([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] = [p].[ParentID] AND [ch].[ChildID] > 1
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

