﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Sum([t1].[Value1]),
	SUM([t1].[Value1])
FROM
	[Parent] [t1]
GROUP BY
	[t1].[ParentID]

