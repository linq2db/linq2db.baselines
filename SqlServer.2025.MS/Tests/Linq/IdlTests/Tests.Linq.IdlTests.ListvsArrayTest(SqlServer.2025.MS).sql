-- SqlServer.2025.MS SqlServer.2025

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (N'John')

-- SqlServer.2025.MS SqlServer.2025
DECLARE @st NVarChar(4000) -- String
SET     @st = N'John'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (@st)

