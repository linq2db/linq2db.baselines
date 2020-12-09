BeforeExecute
-- SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[t1].[PersonID],
	[t1].[FirstName]
FROM
	(
		SELECT
			[p1].[PersonID],
			[p2].[PersonID] + 1 as [c1],
			[p2].[FirstName]
		FROM
			[Person] [p1],
			[Person] [p2]
		WHERE
			[p2].[PersonID] = @id
	) [t1]
WHERE
	[t1].[PersonID] = [t1].[c1] - 1

