BeforeExecute
-- SQLite.Classic SQLite
DECLARE @LastName NVarChar(1) -- String
SET     @LastName = 'a'

UPDATE
	[Person]
SET
	[LastName] = @LastName
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
				INNER JOIN [Doctor] [d] ON [p].[FirstName] = [d].[Taxonomy]
				INNER JOIN [Doctor] [g_1] ON [p].[LastName] = [g_1].[Taxonomy]
		WHERE
			[p].[PersonID] = [Person].[PersonID]
	)

