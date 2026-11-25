-- SqlServer.2019.MS SqlServer.2019
SELECT
	[s].[ParentID],
	IIF([s].[Value1] IS NULL, N'none', NULL)
FROM
	[Parent] [x]
		RIGHT JOIN [Parent] [s] ON [s].[Value1] = [x].[ParentID]

