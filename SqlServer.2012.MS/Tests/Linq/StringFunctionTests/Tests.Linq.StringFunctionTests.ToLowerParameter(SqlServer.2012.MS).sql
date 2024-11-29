BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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
	Lower([p].[FirstName]) = Lower(@param) AND [p].[PersonID] = 1

