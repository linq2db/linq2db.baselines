﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [_]
		LEFT JOIN [Parent] [a_Parent] ON ([_].[ParentID] = [a_Parent].[ParentID])

