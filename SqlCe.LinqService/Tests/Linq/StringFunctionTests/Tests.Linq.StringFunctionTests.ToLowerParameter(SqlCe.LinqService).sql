BeforeExecute
-- SqlCe (asynchronously)
DECLARE @param NVarChar(4) -- String
SET     @param = 'john'

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) = @param AND [p].[PersonID] = 1

