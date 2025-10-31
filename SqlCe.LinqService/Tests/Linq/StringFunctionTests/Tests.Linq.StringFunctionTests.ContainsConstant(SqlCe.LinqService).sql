BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%jOh%' ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%jOh%' ESCAPE '~' AND [p].[PersonID] = 1

