﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1],
	[GetParentByID](2) [p]

