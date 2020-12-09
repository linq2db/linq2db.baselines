BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'J%' ESCAPE N'~' AND ([p].[PersonID] = 1 OR [p].[LastName] = N'fail')

