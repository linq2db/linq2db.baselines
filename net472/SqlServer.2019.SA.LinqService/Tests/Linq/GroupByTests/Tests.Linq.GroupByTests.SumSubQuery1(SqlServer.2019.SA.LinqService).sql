﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @n Int -- Int32
SET     @n = -1

SELECT
	Sum([t1].[ParentID] - 3)
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [ParentID],
			[ch].[ChildID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] > @n
	) [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

