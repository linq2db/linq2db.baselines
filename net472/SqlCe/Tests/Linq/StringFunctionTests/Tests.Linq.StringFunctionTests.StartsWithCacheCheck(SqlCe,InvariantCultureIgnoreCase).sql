BeforeExecute
-- SqlCe

SELECT TOP (2)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_1 ESCAPE '~' AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @nameToCheck_1 ESCAPE '~' AND
	[p].[PersonID] = 1

