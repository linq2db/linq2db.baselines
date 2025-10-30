BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Patient] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[Diagnosis], LEN([p].[Diagnosis] + '.') - 11, 11)) = Convert(VARBINARY(8000), 'Persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Patient] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[Diagnosis], LEN([p].[Diagnosis] + '.') - 11, 11)) <> Convert(VARBINARY(8000), 'Persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Patient] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[Diagnosis], LEN([p].[Diagnosis] + '.') - 11, 11)) = Convert(VARBINARY(8000), 'persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Patient] [p]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([p].[Diagnosis], LEN([p].[Diagnosis] + '.') - 11, 11)) <> Convert(VARBINARY(8000), 'persecution') AND
	[p].[PersonID] = 2

