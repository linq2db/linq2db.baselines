BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	(Convert(Float, [_1].[Count_1]) * 100) / SUM([_1].[Count_1]) OVER(),
	[_1].[Sum_1]
FROM
	(
		SELECT
			Count(*) as [Count_1],
			Sum([_].[ParentID]) as [Sum_1]
		FROM
			[Child] [_]
		GROUP BY
			[_].[ParentID]
		HAVING
			(Sum([_].[ParentID]) <> 36 OR Sum([_].[ParentID]) IS NULL)
	) [_1]

