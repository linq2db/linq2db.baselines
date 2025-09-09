BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[p1].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [p1],
	[Person] [p2]
WHERE
	[p2].[PersonID] = @id AND [p1].[PersonID] = [p2].[PersonID]

