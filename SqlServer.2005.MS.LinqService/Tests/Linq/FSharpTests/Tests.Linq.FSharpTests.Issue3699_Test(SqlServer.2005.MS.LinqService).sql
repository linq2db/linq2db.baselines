﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[o].[ParentID],
	[o].[Value1],
	[o].[ParentID],
	[o].[Value1],
	[pet].[ParentID],
	[pet].[Value1]
FROM
	[Parent] [o]
		LEFT JOIN [Parent] [pet] ON [o].[ParentID] = [pet].[ParentID]

