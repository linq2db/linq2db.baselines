BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
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
			[p].[Value1],
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] <> @id1
	) [left_1]
		FULL JOIN (
			SELECT
				[right_1].[ParentID],
				[right_1].[Value1] + 2 as [c1]
			FROM
				[Parent] [right_1]
					INNER JOIN [Parent] [right2] ON [right_1].[Value1] = [right2].[Value1] + 2
			WHERE
				[right_1].[ParentID] <> @id2 AND [right2].[ParentID] <> @id1
		) [right_2] ON ([right_2].[c1] = [left_1].[Value1] OR [right_2].[c1] IS NULL AND [left_1].[Value1] IS NULL)
ORDER BY
	[left_1].[ParentID]

