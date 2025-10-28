BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN Length([p].[FirstName]) = 2 THEN [p].[FirstName] || '123'
		ELSE SUBSTRING([p].[FirstName], 1, 2) || '123' || SUBSTRING([p].[FirstName], LENGTH([p].[FirstName]) - (Length([p].[FirstName]) - 2) + 1)
	END = 'Jo123hn' AND
	[p].[PersonID] = 1

