BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'Hall%' ESCAPE '~' AND Convert(VARBINARY(8000), SUBSTRING([r].[Diagnosis], 1, 4)) = Convert(VARBINARY(8000), 'Hall')

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'hall%' ESCAPE '~' AND Convert(VARBINARY(8000), SUBSTRING([r].[Diagnosis], 1, 4)) = Convert(VARBINARY(8000), 'hall')

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE 'Hall%' ESCAPE '~'

