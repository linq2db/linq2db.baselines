-- SQLite.Classic SQLite
SELECT
	Length([p].[FirstName]),
	CAST('X' AS NVarChar(255)),
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 2
UNION ALL
SELECT
	Length([p_1].[LastName]),
	CAST('X' AS NVarChar(255)),
	[p_1].[FirstName]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] <= 2

-- SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

