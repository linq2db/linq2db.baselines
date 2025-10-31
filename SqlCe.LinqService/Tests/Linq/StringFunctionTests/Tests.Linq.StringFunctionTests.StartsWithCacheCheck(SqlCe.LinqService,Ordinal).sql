BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (2)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @nameToCheck Int -- Int32
SET     @nameToCheck = 3
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'Joh'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck)) = Convert(VARBINARY(8000), @nameToCheck_1) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @nameToCheck Int -- Int32
SET     @nameToCheck = 3
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'Joh'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck)) <> Convert(VARBINARY(8000), @nameToCheck_1) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @nameToCheck Int -- Int32
SET     @nameToCheck = 3
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'JOH'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck)) = Convert(VARBINARY(8000), @nameToCheck_1) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @nameToCheck Int -- Int32
SET     @nameToCheck = 3
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'JOH'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck)) <> Convert(VARBINARY(8000), @nameToCheck_1) AND
	[p].[PersonID] = 1

