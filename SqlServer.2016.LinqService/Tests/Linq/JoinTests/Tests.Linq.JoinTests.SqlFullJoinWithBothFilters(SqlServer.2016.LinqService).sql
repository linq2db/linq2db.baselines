﻿BeforeExecute
-- SqlServer.2016
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 2

SELECT
	[left_1].[ParentID],
	[right_2].[ParentID]
FROM
	(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] <> @id1
	) [left_1]
		FULL JOIN (
			SELECT
				[right_1].[ParentID]
			FROM
				[Parent] [right_1]
			WHERE
				[right_1].[ParentID] <> @id2
		) [right_2] ON [right_2].[ParentID] = [left_1].[ParentID]
ORDER BY
	IIF([left_1].[ParentID] IS NOT NULL, [left_1].[ParentID], NULL)

