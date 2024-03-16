﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[left_1].[ParentID],
	[right_1].[ParentID]
FROM
	[Parent] [left_1]
		INNER JOIN [Parent] [left2] ON [left_1].[Value1] = [left2].[Value1] + 2
		RIGHT JOIN [Parent] [right_1] ON ([right_1].[Value1] + 2 = [left_1].[Value1] OR [right_1].[Value1] + 2 IS NULL AND [left_1].[Value1] IS NULL)
ORDER BY
	CASE
		WHEN [left_1].[ParentID] IS NOT NULL
			THEN [left_1].[ParentID]
		ELSE NULL
	END

