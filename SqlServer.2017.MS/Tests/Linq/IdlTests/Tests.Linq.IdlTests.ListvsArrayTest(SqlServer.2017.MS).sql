-- SqlServer.2017.MS SqlServer.2017

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (N'John')

-- SqlServer.2017.MS SqlServer.2017
DECLARE @st NVarChar(4000) -- String
SET     @st = N'John'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (@st)

