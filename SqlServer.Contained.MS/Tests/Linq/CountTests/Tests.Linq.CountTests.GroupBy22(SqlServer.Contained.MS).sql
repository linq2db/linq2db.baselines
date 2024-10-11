﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	COUNT(IIF([t1].[ParentID] < 3, 1, NULL))
FROM
	(
		SELECT
			[g_1].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] + 2 > @n
	) [t1]
GROUP BY
	[t1].[ParentID]

