BeforeExecute
-- SqlCe (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP (2)
	[p].[PersonID] as [ID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

