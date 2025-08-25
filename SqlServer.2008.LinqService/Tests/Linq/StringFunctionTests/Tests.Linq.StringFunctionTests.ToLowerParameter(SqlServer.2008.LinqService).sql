BeforeExecute
-- SqlServer.2008 (asynchronously)
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
	Lower([p].[FirstName]) = @param AND [p].[PersonID] = 1

