﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] <> 1 AND [p].[Value1] IS NOT NULL

