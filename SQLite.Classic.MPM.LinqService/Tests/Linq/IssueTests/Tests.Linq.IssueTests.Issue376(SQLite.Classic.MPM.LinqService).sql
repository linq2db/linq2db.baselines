BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[_].[PersonID],
	[a_Doctor].[PersonID],
	[a_Doctor].[Taxonomy]
FROM
	[Person] [_]
		LEFT JOIN [Doctor] [a_Doctor] ON [_].[PersonID] = [a_Doctor].[PersonID]
WHERE
	(Length([a_Doctor].[Taxonomy]) >= 0 OR [a_Doctor].[Taxonomy] IS NULL)

