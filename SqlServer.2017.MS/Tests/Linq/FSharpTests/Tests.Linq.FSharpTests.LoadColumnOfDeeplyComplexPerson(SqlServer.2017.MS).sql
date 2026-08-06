-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP (2)
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

