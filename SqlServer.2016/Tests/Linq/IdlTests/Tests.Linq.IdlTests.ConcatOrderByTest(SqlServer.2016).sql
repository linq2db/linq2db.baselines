BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Rank],
	[t1].[FirstName],
	[t1].[FirstName_1]
FROM
	(
		SELECT
			CAST(0 AS Int) as [Rank],
			NULL as [FirstName],
			NULL as [FirstName_1]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] < 0
		UNION ALL
		SELECT
			[p_1].[PersonID] as [Rank],
			[p_1].[FirstName],
			[p_1].[LastName] as [FirstName_1]
		FROM
			[Person] [p_1]
	) [t1]
ORDER BY
	[t1].[Rank],
	[t1].[FirstName],
	[t1].[FirstName_1]

