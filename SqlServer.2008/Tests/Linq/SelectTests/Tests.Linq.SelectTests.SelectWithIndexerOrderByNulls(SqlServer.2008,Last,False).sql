-- SqlServer.2008

SELECT
	[x].[ID],
	[x].[Index_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY CASE
				WHEN [p].[MiddleName] IS NULL THEN 1
				ELSE 0
			END, [p].[MiddleName], [p].[PersonID]) - 1 as [Index_1],
			[p].[PersonID] as [ID],
			CASE
				WHEN [p].[MiddleName] IS NULL THEN 1
				ELSE 0
			END as [c1],
			[p].[MiddleName]
		FROM
			[Person] [p]
	) [x]
WHERE
	[x].[Index_1] >= 0
ORDER BY
	[x].[c1],
	[x].[MiddleName],
	[x].[ID]

-- SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

