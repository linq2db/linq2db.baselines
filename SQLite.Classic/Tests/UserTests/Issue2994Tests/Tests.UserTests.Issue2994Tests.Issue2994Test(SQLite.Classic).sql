BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[Person]
SET
	[LastName] = 'a'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [y]
				INNER JOIN [Doctor] [d] ON [y].[FirstName] = [d].[Taxonomy]
				INNER JOIN [Doctor] [g_1] ON [y].[LastName] = [g_1].[Taxonomy]
		WHERE
			[y].[PersonID] = [Person].[PersonID]
	)

