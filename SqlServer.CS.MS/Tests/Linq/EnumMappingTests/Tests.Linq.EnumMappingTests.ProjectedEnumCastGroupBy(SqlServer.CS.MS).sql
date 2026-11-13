-- SqlServer.CS.MS SqlServer.2025
SELECT
	[g_1].[Gender],
	COUNT(*)
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[Gender]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

