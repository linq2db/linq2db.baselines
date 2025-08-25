BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (2)
	COUNT([p].[PersonID]) as [c1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 2)

BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (2)
	COUNT([p].[PersonID]) as [c1]
FROM
	[Person] [p]
WHERE
	1 = 0

