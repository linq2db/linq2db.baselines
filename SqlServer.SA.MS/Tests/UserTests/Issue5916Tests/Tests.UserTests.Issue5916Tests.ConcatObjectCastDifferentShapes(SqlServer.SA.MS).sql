-- SqlServer.SA.MS SqlServer.2019
SELECT
	CAST(N'p_' AS NVarChar(4000)),
	[p].[PersonID],
	CAST(N'X' AS NVarChar(4000)),
	[p].[FirstName],
	NULL,
	NULL,
	NULL,
	NULL,
	NULL
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 2
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	NULL,
	CAST(N'c_' AS NVarChar(4000)),
	[p_1].[PersonID],
	CAST(N'X' AS NVarChar(4000)),
	[p_1].[FirstName],
	[p_1].[LastName]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] <= 2

-- SqlServer.SA.MS SqlServer.2019
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

