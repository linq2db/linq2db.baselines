﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] + 100 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	)

