BeforeExecute
-- Sybase.Managed Sybase
DECLARE @s UniVarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE '%~[%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @s UniVarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE '%~[%' ESCAPE '~'

