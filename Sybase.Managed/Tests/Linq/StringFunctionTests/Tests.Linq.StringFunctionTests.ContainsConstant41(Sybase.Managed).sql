-- Sybase.Managed Sybase
DECLARE @s UniVarChar(7) -- String
SET     @s = '123[456'
DECLARE @ps UniVarChar(4) -- String
SET     @ps = '%~[%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @ps ESCAPE '~'

