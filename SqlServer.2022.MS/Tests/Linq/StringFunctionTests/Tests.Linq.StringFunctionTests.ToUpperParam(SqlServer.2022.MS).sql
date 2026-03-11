-- SqlServer.2022.MS SqlServer.2022
DECLARE @param NVarChar(4000) -- String
SET     @param = N'JOHN'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Upper([p].[FirstName]) = @param AND [p].[PersonID] = 1

