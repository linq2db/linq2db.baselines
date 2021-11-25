BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[p].[c1]
FROM
	(
		SELECT
			IIF([selectParam].[ParentID] > 2, IIF([selectParam].[ParentID] > 3, N'1', N'2'), N'3') + N'2' as [c1]
		FROM
			[Child] [selectParam]
		GROUP BY
			IIF([selectParam].[ParentID] > 2, IIF([selectParam].[ParentID] > 3, N'1', N'2'), N'3')
	) [p]
WHERE
	[p].[c1] = N'22'

