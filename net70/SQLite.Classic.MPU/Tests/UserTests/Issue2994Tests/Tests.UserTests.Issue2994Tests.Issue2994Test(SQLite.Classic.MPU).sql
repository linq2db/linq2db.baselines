BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
			[Person] [y]
				INNER JOIN [Doctor] [d] ON [y].[FirstName] = [d].[Taxonomy]
				INNER JOIN [Doctor] [g_1] ON [y].[LastName] = [g_1].[Taxonomy]
		WHERE
			[y].[PersonID] = [Person].[PersonID]
	)

