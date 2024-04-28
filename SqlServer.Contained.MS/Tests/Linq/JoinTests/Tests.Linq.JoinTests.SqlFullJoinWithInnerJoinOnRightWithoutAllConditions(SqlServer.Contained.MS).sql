BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	IIF([left_1].[ParentID] IS NOT NULL, [left_1].[ParentID], NULL),
	[right_1].[ParentID]
FROM
	[Parent] [left_1]
		INNER JOIN [Parent] [left2] ON [left_1].[Value1] = [left2].[Value1] + 2
		FULL JOIN [Parent] [right_1] ON ([right_1].[Value1] + 2 = [left_1].[Value1] OR [right_1].[Value1] + 2 IS NULL AND [left_1].[Value1] IS NULL)
ORDER BY
	IIF([left_1].[ParentID] IS NOT NULL, [left_1].[ParentID], NULL)

