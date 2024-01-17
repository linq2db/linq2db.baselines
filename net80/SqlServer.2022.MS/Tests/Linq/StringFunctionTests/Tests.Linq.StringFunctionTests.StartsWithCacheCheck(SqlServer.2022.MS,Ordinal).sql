BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'Joh%'
DECLARE @nameToCheck_1 Int -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(4000) -- String
SET     @nameToCheck_2 = N'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([p].[FirstName], @nameToCheck_1)) = Convert(VarBinary(8000), @nameToCheck_2) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'Joh%'
DECLARE @nameToCheck_1 Int -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(4000) -- String
SET     @nameToCheck_2 = N'Joh'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE N'~' OR Convert(VarBinary(8000), LEFT([p].[FirstName], @nameToCheck_1)) <> Convert(VarBinary(8000), @nameToCheck_2)) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'JOH%'
DECLARE @nameToCheck_1 Int -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(4000) -- String
SET     @nameToCheck_2 = N'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([p].[FirstName], @nameToCheck_1)) = Convert(VarBinary(8000), @nameToCheck_2) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'JOH%'
DECLARE @nameToCheck_1 Int -- Int32
SET     @nameToCheck_1 = 3
DECLARE @nameToCheck_2 NVarChar(4000) -- String
SET     @nameToCheck_2 = N'JOH'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE N'~' OR Convert(VarBinary(8000), LEFT([p].[FirstName], @nameToCheck_1)) <> Convert(VarBinary(8000), @nameToCheck_2)) AND
	[p].[PersonID] = 1

