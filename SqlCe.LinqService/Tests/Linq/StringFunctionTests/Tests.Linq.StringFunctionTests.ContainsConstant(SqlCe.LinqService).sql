﻿BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%jOh%' ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%jOh%' ESCAPE '~' AND [p].[PersonID] = 1

