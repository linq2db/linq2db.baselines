﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Parent] [p1]
		WHERE
			[p1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

