﻿BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%o[%]h%' AND [p].[PersonID] = 1

BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%o[%]h%' AND [p].[PersonID] = 1

