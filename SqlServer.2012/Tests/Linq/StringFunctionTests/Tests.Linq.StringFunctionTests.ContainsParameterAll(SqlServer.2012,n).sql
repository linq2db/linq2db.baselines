﻿BeforeExecute
-- SqlServer.2012
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123n456'
DECLARE @toTest NVarChar(4000) -- String
SET     @toTest = N'%n%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE N'~'

