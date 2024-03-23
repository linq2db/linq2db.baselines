BeforeExecute
-- SqlCe
DECLARE @p NVarChar(1) -- String
SET     @p = 'e'

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CharIndex(@p, [p].[LastName], 3) - 1 = 4 AND [p].[PersonID] = 2

