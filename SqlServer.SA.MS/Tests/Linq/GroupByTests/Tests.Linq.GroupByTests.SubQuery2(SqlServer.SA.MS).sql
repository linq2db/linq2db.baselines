﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[t1].[ParentID]
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] + 1 > @n
	) [t1]
GROUP BY
	[t1].[ParentID]

