-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, 2)) = Convert(VARBINARY(8000), 'Jo') AND
	[p].[PersonID] = 1

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, 2)) = Convert(VARBINARY(8000), 'jo') AND
	[p].[PersonID] = 1

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Person] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[FirstName], 1, 2)) <> Convert(VARBINARY(8000), 'Jo') AND
	[p].[PersonID] = 1

