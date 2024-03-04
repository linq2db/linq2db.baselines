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
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlCe
DECLARE @nameToCheck NVarChar(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @nameToCheck ESCAPE '~' AND
	[p].[PersonID] = 1

