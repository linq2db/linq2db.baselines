﻿BeforeExecute
-- SqlServer.2014

SELECT
	Sum([t1].[Value1]),
	SUM([t1].[Value1])
FROM
	[Parent] [t1]
GROUP BY
	[t1].[ParentID]

