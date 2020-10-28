BeforeExecute
-- SqlCe
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest NVarChar(3) -- String
SET     @toTest = '%n%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE '~'

BeforeExecute
-- SqlCe
DECLARE @s2 NVarChar(7) -- String
SET     @s2 = '123N456'
DECLARE @toTest NVarChar(3) -- String
SET     @toTest = '%n%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s2 LIKE @toTest ESCAPE '~'

