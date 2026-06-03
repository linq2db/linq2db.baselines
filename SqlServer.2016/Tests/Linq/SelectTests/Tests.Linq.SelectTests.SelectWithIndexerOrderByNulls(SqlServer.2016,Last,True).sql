-- SqlServer.2016

SELECT
	[x].[ID],
	[x].[Index_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY IIF([p].[MiddleName] IS NULL, 1, 0), [p].[MiddleName] DESC, [p].[PersonID]) - 1 as [Index_1],
			[p].[PersonID] as [ID],
			IIF([p].[MiddleName] IS NULL, 1, 0) as [c1],
			[p].[MiddleName]
		FROM
			[Person] [p]
	) [x]
WHERE
	[x].[Index_1] >= 0
ORDER BY
	[x].[c1],
	[x].[MiddleName] DESC,
	[x].[ID]

-- SqlServer.2016

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

