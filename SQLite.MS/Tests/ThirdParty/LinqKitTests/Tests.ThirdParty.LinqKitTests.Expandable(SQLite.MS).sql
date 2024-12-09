BeforeExecute
-- SQLite.MS SQLite
DECLARE @name NVarChar(4) -- String
SET     @name = 'John'
DECLARE @name_1 NVarChar(3) -- String
SET     @name_1 = 'Doe'

SELECT
	[i].[FirstName],
	[i].[PersonID],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender]
FROM
	[Person] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [i_1]
		WHERE
			([i_1].[FirstName] LIKE @name OR [i_1].[FirstName] LIKE @name_1) AND
			[i_1].[PersonID] = [i].[PersonID]
	)

