BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%o~%h%' ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%o~%h%' ESCAPE '~' AND [p].[PersonID] = 1

