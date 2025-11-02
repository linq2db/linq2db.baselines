-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (N'John')

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @st NVarChar(4000) -- String
SET     @st = N'John'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (@st)

