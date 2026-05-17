-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[PersonID] as [ID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

