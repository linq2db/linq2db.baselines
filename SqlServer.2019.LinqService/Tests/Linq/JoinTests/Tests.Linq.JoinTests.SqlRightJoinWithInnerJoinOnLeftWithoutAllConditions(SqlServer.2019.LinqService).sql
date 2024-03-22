BeforeExecute
-- SqlServer.2019

SELECT
	[left_1].[ParentID],
	[right_1].[ParentID]
FROM
	[Parent] [left_1]
		RIGHT JOIN [Parent] [right_1]
			INNER JOIN [Parent] [right2] ON [right_1].[Value1] = [right2].[Value1] + 2
		ON ([right_1].[Value1] + 2 = [left_1].[Value1] OR [right_1].[Value1] + 2 IS NULL AND [left_1].[Value1] IS NULL)
ORDER BY
	IIF([left_1].[ParentID] IS NOT NULL, [left_1].[ParentID], NULL)

