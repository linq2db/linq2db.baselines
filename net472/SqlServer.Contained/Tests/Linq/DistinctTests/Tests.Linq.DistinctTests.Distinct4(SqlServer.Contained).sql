﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2),
	[p].[Value1]
FROM
	[Parent] [p]

