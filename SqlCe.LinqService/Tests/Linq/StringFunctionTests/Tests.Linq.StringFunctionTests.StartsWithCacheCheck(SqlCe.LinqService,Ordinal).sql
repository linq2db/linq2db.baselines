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
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'Joh'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, LEN(@nameToCheck))) = Convert(VARBINARY(8000), @nameToCheck) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'Joh'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, LEN(@nameToCheck))) <> Convert(VARBINARY(8000), @nameToCheck) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'JOH'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, LEN(@nameToCheck))) = Convert(VARBINARY(8000), @nameToCheck) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'JOH'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, LEN(@nameToCheck))) <> Convert(VARBINARY(8000), @nameToCheck) AND
	[p].[PersonID] = 1

