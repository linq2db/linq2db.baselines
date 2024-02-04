BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParameterP NVarChar(4) -- String
SET     @ParameterP = 'John'
DECLARE @take  -- Int32
SET     @take = 2

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
LIMIT @take

