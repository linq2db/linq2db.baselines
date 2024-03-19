BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[_1].[ID],
	[_1].[PersonID],
	[_1].[Taxonomy]
FROM
	(
		SELECT
			Length([a_Doctor].[Taxonomy]) as [Length_1],
			[a_Doctor].[Taxonomy],
			[_].[PersonID] as [ID],
			[a_Doctor].[PersonID]
		FROM
			[Person] [_]
				LEFT JOIN [Doctor] [a_Doctor] ON [_].[PersonID] = [a_Doctor].[PersonID]
	) [_1]
WHERE
	([_1].[Length_1] >= 0 OR [_1].[Taxonomy] IS NULL)

