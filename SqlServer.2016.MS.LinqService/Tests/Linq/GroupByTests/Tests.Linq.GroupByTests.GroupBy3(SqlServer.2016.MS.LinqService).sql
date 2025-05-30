﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[gr_1].[Key_1]
FROM
	(
		SELECT
			Coalesce([gr].[Value1], [c_1].[ChildID]) as [Key_1]
		FROM
			[Parent] [gr]
				INNER JOIN [Child] [c_1] ON [gr].[ParentID] = [c_1].[ParentID]
	) [gr_1]
GROUP BY
	[gr_1].[Key_1]

