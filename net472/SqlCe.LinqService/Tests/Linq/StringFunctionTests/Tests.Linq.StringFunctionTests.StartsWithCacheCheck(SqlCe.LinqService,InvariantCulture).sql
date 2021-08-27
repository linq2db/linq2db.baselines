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
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_2)) = Convert(VarBinary(8000), @nameToCheck_1) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'Joh%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' OR Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_2)) <> Convert(VarBinary(8000), @nameToCheck_1)) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_2)) = Convert(VarBinary(8000), @nameToCheck_1) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck_1 NVarChar(3) -- String
SET     @nameToCheck_1 = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' OR Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_2)) <> Convert(VarBinary(8000), @nameToCheck_1)) AND
	[p].[PersonID] = 1

