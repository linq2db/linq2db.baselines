﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[ParentID],
	1
FROM
	[Parent] [p]
UNION
SELECT
	[ch].[ParentID],
	0
FROM
	[Child] [ch]

