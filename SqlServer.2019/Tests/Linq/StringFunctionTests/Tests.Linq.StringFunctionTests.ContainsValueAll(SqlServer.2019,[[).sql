﻿BeforeExecute
-- SqlServer.2019
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[[456'
DECLARE @toTest NVarChar(4000) -- String
SET     @toTest = N'%~[~[%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE N'~'

BeforeExecute
-- SqlServer.2019
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[[456'
DECLARE @toTest NVarChar(4000) -- String
SET     @toTest = N'%~[~[%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE @toTest ESCAPE N'~'

