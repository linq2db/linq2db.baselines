-- SqlServer.2012.MS SqlServer.2012

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (N'John')

-- SqlServer.2012.MS SqlServer.2012
DECLARE @st NVarChar(4000) -- String
SET     @st = N'John'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (@st)

