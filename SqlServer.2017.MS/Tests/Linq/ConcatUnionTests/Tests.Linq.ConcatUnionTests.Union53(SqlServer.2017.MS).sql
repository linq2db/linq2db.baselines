﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p1].[ParentID],
	NULL
FROM
	[Parent] [p1]
UNION
SELECT
	NULL,
	[p2].[Value1]
FROM
	[Parent] [p2]

