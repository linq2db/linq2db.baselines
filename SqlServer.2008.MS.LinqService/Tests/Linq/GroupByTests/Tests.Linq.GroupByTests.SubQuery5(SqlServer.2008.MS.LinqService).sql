﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Sum([ch].[ParentID])
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [pg] ON [ch].[ParentID] = [pg].[ParentID]
GROUP BY
	[ch].[ChildID]

