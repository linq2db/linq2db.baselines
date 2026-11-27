-- SqlServer.2005
SELECT
	CharIndex(N'o', [p].[MiddleName])
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2005
SELECT
	CharIndex([p].[MiddleName], [p].[FirstName])
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2005
SELECT
	CharIndex(CASE
		WHEN [p].[MiddleName] IS NULL THEN NULL
		ELSE N'o'
	END, [p].[FirstName])
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2005
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	CharIndex(N'o', [p].[MiddleName]) = 0
ORDER BY
	[p].[PersonID]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

