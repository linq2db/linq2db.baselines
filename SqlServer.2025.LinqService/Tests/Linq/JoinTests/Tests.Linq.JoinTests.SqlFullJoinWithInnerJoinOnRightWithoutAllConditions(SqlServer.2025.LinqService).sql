BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[left_1].[ParentID],
	[right_1].[ParentID]
FROM
	[Parent] [left_1]
		INNER JOIN [Parent] [left2] ON [left_1].[Value1] = [left2].[Value1] + 2
		FULL JOIN [Parent] [right_1] ON [right_1].[Value1] + 2 = [left_1].[Value1] OR [right_1].[Value1] IS NULL AND [left_1].[Value1] IS NULL
ORDER BY
	[left_1].[ParentID]

