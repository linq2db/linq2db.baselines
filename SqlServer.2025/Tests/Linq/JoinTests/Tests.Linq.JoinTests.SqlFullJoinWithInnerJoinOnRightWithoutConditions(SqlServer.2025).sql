﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @id1 Int -- Int32
SET     @id1 = 1

SELECT
	[left_1].[ParentID],
	[right_2].[Right_1]
FROM
	[Parent] [left_1]
		INNER JOIN [Parent] [left2] ON [left_1].[Value1] = [left2].[Value1] + 2
		FULL JOIN (
			SELECT
				[right_1].[ParentID] as [Right_1],
				[right_1].[Value1] + 2 as [c1]
			FROM
				[Parent] [right_1]
			WHERE
				[right_1].[ParentID] <> @id1
		) [right_2] ON [right_2].[c1] = [left_1].[Value1] OR [right_2].[c1] IS NULL AND [left_1].[Value1] IS NULL
ORDER BY
	[left_1].[ParentID]

