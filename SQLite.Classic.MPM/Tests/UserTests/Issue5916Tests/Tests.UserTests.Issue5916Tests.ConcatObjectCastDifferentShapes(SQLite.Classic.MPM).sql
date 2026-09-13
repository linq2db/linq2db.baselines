-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST('p_' AS NVarChar(255)),
	[p].[PersonID],
	CAST('X' AS NVarChar(255)),
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
	CAST('c_' AS NVarChar(255)),
	[p_1].[PersonID],
	CAST('X' AS NVarChar(255)),
	[p_1].[FirstName],
	[p_1].[LastName]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] <= 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

