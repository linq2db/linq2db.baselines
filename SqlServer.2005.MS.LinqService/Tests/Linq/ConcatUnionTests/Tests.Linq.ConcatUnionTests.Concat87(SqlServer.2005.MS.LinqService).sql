﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[c_1].[ParentID],
	NULL
FROM
	[Child] [c_1]
UNION ALL
SELECT
	NULL,
	[c_2].[Value1]
FROM
	[Parent] [c_2]

