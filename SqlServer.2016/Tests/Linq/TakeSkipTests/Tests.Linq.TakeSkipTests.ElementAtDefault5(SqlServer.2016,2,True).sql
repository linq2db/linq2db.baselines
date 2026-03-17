-- SqlServer.2016
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[LastName]
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

