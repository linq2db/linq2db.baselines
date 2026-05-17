-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @s NVarChar(8) -- String
SET     @s = '123]]456'
DECLARE @toTest NVarChar(6) -- String
SET     @toTest = '%~]~]%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE '~'

