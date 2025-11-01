-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[Diagnosis], LEN([r].[Diagnosis] + '.') - 11, 11)) = Convert(VARBINARY(8000), 'Persecution')

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[Diagnosis], LEN([r].[Diagnosis] + '.') - 11, 11)) = Convert(VARBINARY(8000), 'persecution')

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~'

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~'

