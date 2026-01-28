-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x].[Key_1],
	[x].[Index_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY [g_1].[PersonID] DESC) - 1 as [Index_1],
			[g_1].[PersonID] as [Key_1]
		FROM
			[Person] [g_1]
	) [x]
WHERE
	[x].[Index_1] > 0
ORDER BY
	[x].[Key_1] DESC

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

