BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'j%' ESCAPE N'~' AND ([p].[PersonID] = 1 OR [p].[LastName] = N'fail')

