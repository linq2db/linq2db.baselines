-- SqlServer.2022.MS SqlServer.2022
SELECT
	CharIndex(N'o', [p].[MiddleName])
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	CharIndex([p].[MiddleName], [p].[FirstName])
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	CharIndex(IIF([p].[MiddleName] IS NULL, NULL, N'o'), [p].[FirstName])
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	CharIndex(N'o', [p].[MiddleName]) = 0
ORDER BY
	[p].[PersonID]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

