﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Sum([ch].[ParentID])
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [pg] ON [ch].[ParentID] = [pg].[ParentID]
GROUP BY
	[ch].[ChildID]

