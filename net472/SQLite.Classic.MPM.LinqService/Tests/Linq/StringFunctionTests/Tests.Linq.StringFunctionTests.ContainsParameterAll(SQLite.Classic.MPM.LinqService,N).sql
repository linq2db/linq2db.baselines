BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @s NVarChar(7) -- String
SET     @s = '123N456'
DECLARE @toTest NVarChar(3) -- String
SET     @toTest = '%N%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE '~'

