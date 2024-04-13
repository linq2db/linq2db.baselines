BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParameterP NVarChar(4) -- String
SET     @ParameterP = 'John'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @ParameterP
LIMIT 2

