﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] <> 1 OR [p].[Value1] IS NULL

