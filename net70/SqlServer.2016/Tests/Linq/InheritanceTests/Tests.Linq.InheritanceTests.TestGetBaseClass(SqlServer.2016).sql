﻿BeforeExecute
-- SqlServer.2016

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	([x].[Value1] = 1 OR [x].[Value1] = 2)

