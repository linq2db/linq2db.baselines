﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @s UniVarChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest UniVarChar(3) -- String
SET     @toTest = '%n%'

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

