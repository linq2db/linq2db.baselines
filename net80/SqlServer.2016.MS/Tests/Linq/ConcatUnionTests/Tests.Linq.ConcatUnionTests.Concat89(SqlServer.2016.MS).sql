﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	NULL
FROM
	[Parent] [c_2]

