BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Length Int -- Int32
SET     @Length = 4

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LEN([p].[FirstName] + '.') - 1 = @Length AND [p].[PersonID] = 1

