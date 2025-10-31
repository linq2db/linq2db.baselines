BeforeExecute
-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE '%[%' ESCAPE '~'

BeforeExecute
-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE '%[%' ESCAPE '~'

