﻿BeforeExecute
-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123%456'
DECLARE @toTest NVarChar(4) -- String
SET     @toTest = '%~%%'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE '~'

BeforeExecute
-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123%456'
DECLARE @toTest NVarChar(4) -- String
SET     @toTest = '%~%%'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE @toTest ESCAPE '~'

