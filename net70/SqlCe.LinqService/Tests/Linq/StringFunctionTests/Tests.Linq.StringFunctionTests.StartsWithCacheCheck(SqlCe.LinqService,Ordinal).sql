BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1 Int -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_1)) = Convert(VARBINARY(8000), @nameToCheck_2) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_1 Int -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' OR Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_1)) <> Convert(VARBINARY(8000), @nameToCheck_2)) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck_1 Int -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_1)) = Convert(VARBINARY(8000), @nameToCheck_2) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck_1 Int -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(3) -- String
SET     @nameToCheck_2 = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' OR Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_1)) <> Convert(VARBINARY(8000), @nameToCheck_2)) AND
	[p].[PersonID] = 1

