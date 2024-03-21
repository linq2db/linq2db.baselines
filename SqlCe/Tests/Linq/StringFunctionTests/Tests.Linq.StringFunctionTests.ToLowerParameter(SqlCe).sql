BeforeExecute
-- SqlCe
DECLARE @p NVarChar(4) -- String
SET     @p = 'john'

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) = @p AND [p].[PersonID] = 1

