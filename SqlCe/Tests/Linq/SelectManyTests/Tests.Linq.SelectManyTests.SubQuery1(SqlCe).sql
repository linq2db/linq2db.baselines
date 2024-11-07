BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[p1].[PersonID] as [ID],
	[p2].[FirstName]
FROM
	[Person] [p1],
	[Person] [p2]
WHERE
	[p2].[PersonID] = @id AND [p1].[PersonID] = [p2].[PersonID]

