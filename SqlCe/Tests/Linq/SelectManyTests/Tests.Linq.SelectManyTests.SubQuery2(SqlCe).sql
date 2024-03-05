BeforeExecute
-- SqlCe

SELECT
	[p].[PersonID] as [ID],
	[p2].[FirstName]
FROM
	[Person] [p],
	[Person] [p2]
WHERE
	[p].[PersonID] = [p2].[PersonID] AND ([p].[PersonID] = 1 OR [p].[PersonID] = 2) AND
	[p2].[PersonID] <> 2

BeforeExecute
-- SqlCe

SELECT
	[p].[PersonID] as [ID],
	[p2].[FirstName]
FROM
	[Person] [p],
	[Person] [p2]
WHERE
	[p].[PersonID] = [p2].[PersonID] AND ([p].[PersonID] = 1 OR [p].[PersonID] = 2) AND
	[p2].[PersonID] <> 2

