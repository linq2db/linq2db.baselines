﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [_]
		LEFT JOIN [Parent] [a_Parent] ON ([_].[ParentID] = [a_Parent].[ParentID])

