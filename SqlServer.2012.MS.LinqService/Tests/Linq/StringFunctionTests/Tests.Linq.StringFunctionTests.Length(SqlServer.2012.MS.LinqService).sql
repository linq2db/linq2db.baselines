BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @Length Int -- Int32
SET     @Length = 4

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LEN([p].[FirstName] + N'.') - 1 = @Length AND [p].[PersonID] = 1

