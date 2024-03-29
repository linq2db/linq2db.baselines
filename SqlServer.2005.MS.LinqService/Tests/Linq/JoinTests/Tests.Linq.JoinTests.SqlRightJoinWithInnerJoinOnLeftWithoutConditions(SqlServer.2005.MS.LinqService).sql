﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @id1 Int -- Int32
SET     @id1 = 1

SELECT
	[left_1].[ParentID],
	[left_1].[Value1],
	[t1].[right_2],
	[t1].[right_1]
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
		RIGHT JOIN (
			SELECT
				[right_1].[Value1] as [right_1],
				[right_1].[ParentID] as [right_2]
			FROM
				[Parent] [right_1]
					INNER JOIN [Parent] [right2] ON [right_1].[Value1] = [right2].[Value1] + 2
		) [t1] ON [t1].[right_1] + 2 = [left_1].[Value1]
ORDER BY
	[left_1].[ParentID]

