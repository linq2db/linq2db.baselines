BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @id1 Int -- Int32
SET     @id1 = 1

SELECT
	[t1].[Left_1],
	[right_1].[ParentID]
FROM
	(
		SELECT
			[p].[Value1],
			[p].[ParentID] as [Left_1]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] <> @id1
	) [t1]
		FULL JOIN [Parent] [right_1]
			INNER JOIN [Parent] [right2] ON [right_1].[Value1] = [right2].[Value1] + 2
		ON [right_1].[Value1] + 2 = [t1].[Value1] OR [right_1].[Value1] IS NULL AND [t1].[Value1] IS NULL
ORDER BY
	[t1].[Left_1]

