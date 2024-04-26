BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [t1]
WHERE
	([t1].[PersonID] = @id OR [t1].[PersonID] <= @id OR [t1].[PersonID] = @id)

