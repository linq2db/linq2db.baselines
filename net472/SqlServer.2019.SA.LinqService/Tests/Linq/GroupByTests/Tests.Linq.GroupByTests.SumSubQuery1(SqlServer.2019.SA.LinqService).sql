﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @n Int -- Int32
SET     @n = 0

SELECT
	Sum([ch_1].[ParentID] - 3)
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [ParentID],
			[ch].[ChildID]
		FROM
			[Child] [ch]
	) [ch_1]
WHERE
	[ch_1].[ParentID] > @n
GROUP BY
	[ch_1].[ParentID],
	[ch_1].[ChildID]

