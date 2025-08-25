BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[ch].[Key_1] + N'2' as [c1]
		FROM
			(
				SELECT
					IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, N'1', N'2'), N'3') as [Key_1]
				FROM
					[Child] [g_1]
			) [ch]
		GROUP BY
			[ch].[Key_1]
	) [p]
WHERE
	[p].[c1] = N'22'

