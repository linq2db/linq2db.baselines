BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

