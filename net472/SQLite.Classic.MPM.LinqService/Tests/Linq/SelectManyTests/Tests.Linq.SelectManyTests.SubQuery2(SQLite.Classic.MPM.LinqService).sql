BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	[p_1].[FirstName]
FROM
	[Person] [p],
	[Person] [p_1]
WHERE
	[p].[PersonID] = [p_1].[PersonID] AND ([p].[PersonID] = 1 OR [p].[PersonID] = 2) AND [p_1].[PersonID] <> 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	[p_1].[FirstName]
FROM
	[Person] [p],
	[Person] [p_1]
WHERE
	[p].[PersonID] = [p_1].[PersonID] AND ([p].[PersonID] = 1 OR [p].[PersonID] = 2) AND [p_1].[PersonID] <> 2

