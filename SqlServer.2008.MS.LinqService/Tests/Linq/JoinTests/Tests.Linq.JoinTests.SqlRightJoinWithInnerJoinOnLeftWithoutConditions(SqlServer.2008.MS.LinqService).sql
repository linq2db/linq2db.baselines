﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @id1 Int -- Int32
SET     @id1 = 1

SELECT
	CASE
		WHEN [left_1].[ParentID] IS NOT NULL THEN [left_1].[ParentID]
		ELSE NULL
	END,
	[right_1].[ParentID]
FROM
	(
		SELECT
			[p].[Value1],
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] <> @id1
	) [left_1]
		RIGHT JOIN [Parent] [right_1]
			INNER JOIN [Parent] [right2] ON [right_1].[Value1] = [right2].[Value1] + 2
		ON ([right_1].[Value1] + 2 = [left_1].[Value1] OR [right_1].[Value1] + 2 IS NULL AND [left_1].[Value1] IS NULL)
ORDER BY
	CASE
		WHEN [left_1].[ParentID] IS NOT NULL THEN [left_1].[ParentID]
		ELSE NULL
	END

