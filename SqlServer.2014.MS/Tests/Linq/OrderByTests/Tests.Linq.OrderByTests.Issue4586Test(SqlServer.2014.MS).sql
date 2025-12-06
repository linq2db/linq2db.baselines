-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] LIKE N'J%' ESCAPE N'~'
ORDER BY
	[x].[PersonID] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

