BeforeExecute
-- SqlServer.2016 SqlServer.2012 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

