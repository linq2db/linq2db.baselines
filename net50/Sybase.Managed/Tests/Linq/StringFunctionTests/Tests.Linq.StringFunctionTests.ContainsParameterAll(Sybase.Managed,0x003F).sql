﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @s UniVarChar(7) -- String
SET     @s = '123?456'
DECLARE @toTest_1 UniVarChar(3) -- String
SET     @toTest_1 = '%?%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest_1 ESCAPE '~'

