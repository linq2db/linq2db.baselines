BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 0

SELECT
	Count(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

