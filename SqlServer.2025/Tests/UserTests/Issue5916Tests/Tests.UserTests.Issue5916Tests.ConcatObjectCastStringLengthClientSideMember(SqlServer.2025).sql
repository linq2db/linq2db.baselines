-- SqlServer.2025
SELECT
	LEN([p].[FirstName] || N'.') - 1,
	CAST(N'X' AS NVarChar(4000)),
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 2
UNION ALL
SELECT
	LEN([p_1].[LastName] || N'.') - 1,
	CAST(N'X' AS NVarChar(4000)),
	[p_1].[FirstName]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] <= 2

-- SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

