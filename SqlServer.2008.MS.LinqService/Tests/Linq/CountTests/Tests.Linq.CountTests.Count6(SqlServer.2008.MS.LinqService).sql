﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as [c1]
		FROM
			[Child] [t1]
		GROUP BY
			[t1].[ParentID]
		HAVING
			[t1].[ParentID] > 2
	) [t2]

