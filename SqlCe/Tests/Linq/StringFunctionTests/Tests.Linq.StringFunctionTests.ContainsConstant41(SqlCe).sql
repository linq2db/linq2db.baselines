-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'
DECLARE @ps NVarChar(3) -- String
SET     @ps = '%[%'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @ps ESCAPE '~'

