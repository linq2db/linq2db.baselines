BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[FirstName],
	[r].[PersonID] as [ID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = @p

