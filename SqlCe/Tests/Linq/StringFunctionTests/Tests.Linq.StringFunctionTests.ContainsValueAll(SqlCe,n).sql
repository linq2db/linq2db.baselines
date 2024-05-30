BeforeExecute
-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE '%n%' ESCAPE '~'

BeforeExecute
-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE '%n%' ESCAPE '~'

