-- SqlCe
DECLARE @s NVarChar(8) -- String
SET     @s = '123[]456'
DECLARE @toTest NVarChar(4) -- String
SET     @toTest = '%[]%'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE '~'

