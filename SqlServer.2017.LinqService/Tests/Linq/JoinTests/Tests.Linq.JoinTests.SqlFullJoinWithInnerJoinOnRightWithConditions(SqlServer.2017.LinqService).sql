﻿BeforeExecute
-- SqlServer.2017
DECLARE @id2 Int -- Int32
SET     @id2 = 2
DECLARE @id1 Int -- Int32
SET     @id1 = 1

SELECT
	IIF([left_2].[ParentID] IS NOT NULL, [left_2].[ParentID], NULL),
	[right_2].[ParentID]
FROM
	(
		SELECT
			[left_1].[Value1],
			[left_1].[ParentID]
		FROM
			[Parent] [left_1]
				INNER JOIN [Parent] [left2] ON [left_1].[Value1] = [left2].[Value1] + 2
		WHERE
			[left_1].[ParentID] <> @id2 AND [left2].[ParentID] <> @id1
	) [left_2]
		FULL JOIN (
			SELECT
				[right_1].[ParentID],
				[right_1].[Value1] + 2 as [c1]
			FROM
				[Parent] [right_1]
			WHERE
				[right_1].[ParentID] <> @id1
		) [right_2] ON ([right_2].[c1] = [left_2].[Value1] OR [right_2].[c1] IS NULL AND [left_2].[Value1] IS NULL)
ORDER BY
	IIF([left_2].[ParentID] IS NOT NULL, [left_2].[ParentID], NULL)

