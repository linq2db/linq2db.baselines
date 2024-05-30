﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p_1].[item_1],
	[p_1].[ParentID],
	[p_1].[Value_1]
FROM
	(
		SELECT
			IIF([i].[item] = 0, NULL, [p].[ParentID]) as [ID],
			[p].[Value1] as [Value_1],
			[i].[item] as [item_1],
			[p].[ParentID]
		FROM
			[Parent] [p]
				CROSS JOIN (VALUES
					(0), (1)
				) [i]([item])
	) [p_1]
WHERE
	([p_1].[ID] = [p_1].[Value_1] OR [p_1].[ID] IS NULL AND [p_1].[Value_1] IS NULL)

