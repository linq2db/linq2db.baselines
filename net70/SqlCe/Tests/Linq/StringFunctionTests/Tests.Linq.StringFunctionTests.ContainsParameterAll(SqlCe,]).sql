﻿BeforeExecute
-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123]456'
DECLARE @toTest NVarChar(3) -- String
SET     @toTest = '%]%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE '~'

