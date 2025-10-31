-- SqlServer.2016.MS SqlServer.2016

SELECT
	IIF([p].[ParentID] = 1, IIF([c_2].[cond] IS NOT NULL, N'1', N'2'), N'3')
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[c_1].[ParentID] as [cond]
			FROM
				[Child] [c_1]
		) [c_2] ON 1=1

