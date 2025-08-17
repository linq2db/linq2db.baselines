BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[Diagnosis], LEN([r].[Diagnosis] + '.') - 11, 11)) = Convert(VARBINARY(8000), 'Persecution')

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[Diagnosis], LEN([r].[Diagnosis] + '.') - 11, 11)) = Convert(VARBINARY(8000), 'persecution')

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~'

