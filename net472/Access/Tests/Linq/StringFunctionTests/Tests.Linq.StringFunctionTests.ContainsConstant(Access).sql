﻿BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%jOh%' AND [p].[PersonID] = 1

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%jOh%' AND [p].[PersonID] = 1

