﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2)
FROM
	[Parent] [p]

