﻿BeforeExecute
-- SqlServer.2014

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1],
	[GetParentByID](2) [p]

