BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'joH%' ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE 'joH%' ESCAPE '~' AND [p].[PersonID] = 1

