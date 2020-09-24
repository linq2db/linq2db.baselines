BeforeExecute
-- SqlCe
DECLARE @id_1 Int -- Int32
SET     @id_1 = 1

SELECT
	[p1].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p1],
	[Person] [p]
WHERE
	[p1].[PersonID] = [p].[PersonID] AND [p].[PersonID] = @id_1

