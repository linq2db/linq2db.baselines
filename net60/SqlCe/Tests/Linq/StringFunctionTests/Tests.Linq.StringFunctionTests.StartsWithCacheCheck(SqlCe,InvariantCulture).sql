﻿BeforeExecute
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
SET     @nameToCheck_1 = 'Joh%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_1 ESCAPE '~' AND
	Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_2)) = Convert(VarBinary(8000), @nameToCheck) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'Joh%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck_1 ESCAPE '~' OR Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_2)) <> Convert(VarBinary(8000), @nameToCheck)) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_1 ESCAPE '~' AND
	Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_2)) = Convert(VarBinary(8000), @nameToCheck) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(3) -- String
SET     @nameToCheck = 'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck_1 ESCAPE '~' OR Convert(VarBinary(8000), SUBSTRING([p].[FirstName], 1, @nameToCheck_2)) <> Convert(VarBinary(8000), @nameToCheck)) AND
	[p].[PersonID] = 1

