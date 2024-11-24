BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

