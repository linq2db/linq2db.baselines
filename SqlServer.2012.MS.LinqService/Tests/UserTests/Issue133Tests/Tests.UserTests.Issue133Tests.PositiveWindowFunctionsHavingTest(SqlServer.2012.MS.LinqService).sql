BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	(CAST([t2].[COUNT_1] AS Float) * 100) / SUM([t2].[COUNT_1]) OVER(),
	[t2].[SUM_1]
FROM
	(
		SELECT
			COUNT(*) as [COUNT_1],
			SUM([t1].[ParentID]) as [SUM_1]
		FROM
			[Child] [t1]
		GROUP BY
			[t1].[ParentID]
		HAVING
			(SUM([t1].[ParentID]) <> 36 OR SUM([t1].[ParentID]) IS NULL)
	) [t2]

