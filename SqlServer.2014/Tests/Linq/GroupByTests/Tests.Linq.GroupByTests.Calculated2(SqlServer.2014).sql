-- SqlServer.2014

SELECT
	[p].[Key_1] + N'2'
FROM
	(
		SELECT DISTINCT
			IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, N'1', N'2'), N'3') as [Key_1]
		FROM
			[Child] [g_1]
	) [p]
WHERE
	[p].[Key_1] + N'2' = N'22'

