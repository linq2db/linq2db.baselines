BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[PersonID] IS NULL

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

