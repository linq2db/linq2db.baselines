﻿BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @s UniVarChar(7) -- String
SET     @s = '123[456'
DECLARE @toTest UniVarChar(4) -- String
SET     @toTest = '%~[%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE '~'

