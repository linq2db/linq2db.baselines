-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @arr Integer -- Int32
SET     @arr = 2

SELECT
	[p].[PersonID],
	@arr
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
UNION ALL
SELECT
	[p_1].[PersonID],
	CAST(0 AS INTEGER)
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] = 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

