﻿BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~' AND
	Convert(VARBINARY(8000), SUBSTRING([r].[Diagnosis], LEN([r].[Diagnosis]) - 10, 11)) = Convert(VARBINARY(8000), 'Persecution')

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~' AND
	Convert(VARBINARY(8000), SUBSTRING([r].[Diagnosis], LEN([r].[Diagnosis]) - 10, 11)) = Convert(VARBINARY(8000), 'persecution')

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' ESCAPE '~'

