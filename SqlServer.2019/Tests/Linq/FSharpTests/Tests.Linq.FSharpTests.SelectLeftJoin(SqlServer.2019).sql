BeforeExecute
-- SqlServer.2019

SELECT TOP (1)
	[Item1].[ParentID],
	[Item1].[ChildID]
FROM
	[Child] [Item1]
		LEFT JOIN [Parent] [arg2] ON [Item1].[ParentID] = [arg2].[ParentID]
WHERE
	[arg2].[Value1] = 6 AND [arg2].[Value1] IS NOT NULL

