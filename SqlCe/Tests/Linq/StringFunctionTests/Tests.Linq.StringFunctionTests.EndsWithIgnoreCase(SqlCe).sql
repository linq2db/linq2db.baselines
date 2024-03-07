BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%JOHN' ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%JOHN' ESCAPE '~' AND [p].[PersonID] = 1

