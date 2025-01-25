BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[t1].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [t1],
	[Person] [p2]
WHERE
	[p2].[PersonID] = @id AND [t1].[PersonID] = [p2].[PersonID]

