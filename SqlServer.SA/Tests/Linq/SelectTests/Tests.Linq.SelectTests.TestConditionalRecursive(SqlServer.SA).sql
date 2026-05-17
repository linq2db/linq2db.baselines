-- SqlServer.SA SqlServer.2019

SELECT
	IIF([p].[ParentID] = 1, IIF((
		SELECT TOP (1)
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	) IS NOT NULL, N'1', N'2'), N'3')
FROM
	[Parent] [p]

