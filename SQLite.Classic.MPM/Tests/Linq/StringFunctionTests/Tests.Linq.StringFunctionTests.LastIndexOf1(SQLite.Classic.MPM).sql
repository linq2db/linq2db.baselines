BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Length  -- Int32
SET     @Length = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(Length([p].[LastName]) - CharIndex('p', Reverse([p].[LastName]))) - @Length = 1 AND
	CharIndex('p', [p].[LastName]) <> 0 AND [p].[PersonID] = 1

