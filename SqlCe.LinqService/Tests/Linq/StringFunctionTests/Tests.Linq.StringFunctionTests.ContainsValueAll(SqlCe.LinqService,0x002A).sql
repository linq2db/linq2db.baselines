BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123*456' LIKE '%*%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123*456' NOT LIKE '%*%' ESCAPE '~'

