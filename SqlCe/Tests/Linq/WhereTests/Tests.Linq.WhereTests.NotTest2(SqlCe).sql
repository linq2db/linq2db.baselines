-- SqlCe
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND NOT ([p].[MiddleName] IS NOT NULL AND [p].[PersonID] = @n)

