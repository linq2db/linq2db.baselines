BeforeExecute
-- SqlServer.2014

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[ch].[Key_1] + N'2' as [c1]
		FROM
			(
				SELECT
					IIF([selectParam].[ParentID] > 2, IIF([selectParam].[ParentID] > 3, N'1', N'2'), N'3') as [Key_1]
				FROM
					[Child] [selectParam]
			) [ch]
		GROUP BY
			[ch].[Key_1]
	) [p]
WHERE
	[p].[c1] = N'22'

