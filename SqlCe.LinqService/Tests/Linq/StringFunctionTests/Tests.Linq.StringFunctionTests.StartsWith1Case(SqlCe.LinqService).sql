BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, 2)) = Convert(VARBINARY(8000), 'Jo') AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, 2)) = Convert(VARBINARY(8000), 'jo') AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, 2)) <> Convert(VARBINARY(8000), 'Jo') AND
	[p].[PersonID] = 1

