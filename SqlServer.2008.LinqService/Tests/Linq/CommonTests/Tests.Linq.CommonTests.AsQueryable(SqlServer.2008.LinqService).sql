﻿BeforeExecute
-- SqlServer.2008

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [ch]

