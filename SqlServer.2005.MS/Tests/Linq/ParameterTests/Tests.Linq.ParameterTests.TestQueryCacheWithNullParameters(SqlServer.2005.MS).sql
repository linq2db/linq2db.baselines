BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

