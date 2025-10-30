BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123#456' LIKE '%#%' ESCAPE '~'

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123#456' NOT LIKE '%#%' ESCAPE '~'

