﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @nameToCheck_1 NVarChar(4000) -- String
SET     @nameToCheck_1 = N'Joh%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_1 ESCAPE N'~' AND
	Convert(VarBinary(8000), LEFT([p].[FirstName], @nameToCheck_2)) = Convert(VarBinary(8000), @nameToCheck) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @nameToCheck_1 NVarChar(4000) -- String
SET     @nameToCheck_1 = N'Joh%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck_1 ESCAPE N'~' OR Convert(VarBinary(8000), LEFT([p].[FirstName], @nameToCheck_2)) <> Convert(VarBinary(8000), @nameToCheck)) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @nameToCheck_1 NVarChar(4000) -- String
SET     @nameToCheck_1 = N'JOH%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck_1 ESCAPE N'~' AND
	Convert(VarBinary(8000), LEFT([p].[FirstName], @nameToCheck_2)) = Convert(VarBinary(8000), @nameToCheck) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @nameToCheck_1 NVarChar(4000) -- String
SET     @nameToCheck_1 = N'JOH%'
DECLARE @nameToCheck_2 Int -- Int32
SET     @nameToCheck_2 = 3
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck_1 ESCAPE N'~' OR Convert(VarBinary(8000), LEFT([p].[FirstName], @nameToCheck_2)) <> Convert(VarBinary(8000), @nameToCheck)) AND
	[p].[PersonID] = 1

