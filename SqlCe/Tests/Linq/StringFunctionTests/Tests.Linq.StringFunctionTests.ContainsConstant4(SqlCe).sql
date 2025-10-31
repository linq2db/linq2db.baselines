-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE '%[%' ESCAPE '~'

-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE '%[%' ESCAPE '~'

