﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [t1]

