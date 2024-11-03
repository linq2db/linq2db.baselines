﻿BeforeExecute
-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest NVarChar(3) -- String
SET     @toTest = '%n%'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE '~'

BeforeExecute
-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest NVarChar(3) -- String
SET     @toTest = '%n%'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE @toTest ESCAPE '~'

