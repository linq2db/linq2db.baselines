BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[Diagnosis], (LEN([r].[Diagnosis]) - LEN('Persecution')) + 1, LEN('Persecution'))) = Convert(VARBINARY(8000), 'Persecution')

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[Diagnosis], (LEN([r].[Diagnosis]) - LEN('persecution')) + 1, LEN('persecution'))) = Convert(VARBINARY(8000), 'persecution')

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~'

