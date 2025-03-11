BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @personId Int -- Int32
SET     @personId = 1

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @personId AND [p].[PersonID] = @personId AND
	[p].[PersonID] = @personId

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @personId Int -- Int32
SET     @personId = 1
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 2

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @personId AND [p].[PersonID] = @personId AND
	[p].[PersonID] = @personId_1

