BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'Joh%'
DECLARE @nameToCheck_1 NVarChar(4000) -- String
SET     @nameToCheck_1 = N'Joh'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([p].[FirstName], LEN(@nameToCheck_1))) = Convert(VarBinary(8000), @nameToCheck_1) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'Joh%'
DECLARE @nameToCheck_1 NVarChar(4000) -- String
SET     @nameToCheck_1 = N'Joh'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE N'~' OR Convert(VarBinary(8000), LEFT([p].[FirstName], LEN(@nameToCheck_1))) <> Convert(VarBinary(8000), @nameToCheck_1)) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'JOH%'
DECLARE @nameToCheck_1 NVarChar(4000) -- String
SET     @nameToCheck_1 = N'JOH'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @nameToCheck ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([p].[FirstName], LEN(@nameToCheck_1))) = Convert(VarBinary(8000), @nameToCheck_1) AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @nameToCheck NVarChar(4000) -- String
SET     @nameToCheck = N'JOH%'
DECLARE @nameToCheck_1 NVarChar(4000) -- String
SET     @nameToCheck_1 = N'JOH'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE @nameToCheck ESCAPE N'~' OR Convert(VarBinary(8000), LEFT([p].[FirstName], LEN(@nameToCheck_1))) <> Convert(VarBinary(8000), @nameToCheck_1)) AND
	[p].[PersonID] = 1

