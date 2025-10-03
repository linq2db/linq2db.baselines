BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[FirstName],
	[x].[LastName],
	[x].[Index_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY [p].[PersonID] DESC) - 1 as [Index_1],
			[p].[FirstName],
			[p].[LastName]
		FROM
			[Person] [p]
	) [x]
WHERE
	[x].[Index_1] > 0

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

