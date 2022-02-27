BeforeExecute
-- SqlServer.2005
DECLARE @param NVarChar(4000) -- String
SET     @param = N'john'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Upper([p].[FirstName]) = Upper(@param) AND [p].[PersonID] = 1

