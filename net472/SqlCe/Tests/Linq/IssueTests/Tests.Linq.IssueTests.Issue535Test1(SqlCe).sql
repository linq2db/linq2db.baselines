BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[p].[PersonID], 
	[p].[FirstName], 
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'J%' AND ([p].[PersonID] = 1 OR [p].[LastName] = 'fail')

