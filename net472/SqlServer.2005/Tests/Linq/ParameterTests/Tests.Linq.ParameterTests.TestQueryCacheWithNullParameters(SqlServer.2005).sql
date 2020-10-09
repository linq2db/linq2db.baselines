BeforeExecute
-- SqlServer.2005

SELECT 
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[PersonID] IS NULL

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1

SELECT 
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

