BeforeExecute
-- SqlServer.2012

SELECT
	(CAST([_1].[COUNT_1] AS Float) * 100) / SUM([_1].[COUNT_1]) OVER(),
	[_1].[SUM_1]
FROM
	(
		SELECT
			COUNT(*) as [COUNT_1],
			SUM([_].[ParentID]) as [SUM_1]
		FROM
			[Child] [_]
		GROUP BY
			[_].[ParentID]
		HAVING
			(SUM([_].[ParentID]) <> 36 OR SUM([_].[ParentID]) IS NULL)
	) [_1]

