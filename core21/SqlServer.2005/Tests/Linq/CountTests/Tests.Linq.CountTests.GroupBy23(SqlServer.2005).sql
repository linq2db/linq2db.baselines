﻿BeforeExecute
-- SqlServer.2005

SELECT
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT
					[p].[ParentID] + 1 as [ParentID],
					[p].[Value1]
				FROM
					[Parent] [p]
			) [p_1]
		WHERE
			[p_1].[ParentID] < 3 AND ([p_2].[Value1] = [p_1].[Value1] OR [p_2].[Value1] IS NULL AND [p_1].[Value1] IS NULL) AND
			[p_1].[ParentID] > 0
	)
FROM
	[Parent] [p_2]
WHERE
	[p_2].[ParentID] > -1
GROUP BY
	[p_2].[Value1]

